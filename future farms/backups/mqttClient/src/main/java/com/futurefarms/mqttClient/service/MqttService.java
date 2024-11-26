package com.futurefarms.mqttClient.service;

import org.eclipse.paho.client.mqttv3.MqttConnectOptions;
import org.eclipse.paho.client.mqttv3.MqttException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.annotation.Bean;
import org.springframework.integration.annotation.MessagingGateway;
import org.springframework.integration.annotation.ServiceActivator;
import org.springframework.integration.channel.PublishSubscribeChannel;
import org.springframework.integration.mqtt.core.DefaultMqttPahoClientFactory;
import org.springframework.integration.mqtt.core.MqttPahoClientFactory;
import org.springframework.integration.mqtt.inbound.MqttPahoMessageDrivenChannelAdapter;
import org.springframework.integration.mqtt.outbound.MqttPahoMessageHandler;
import org.springframework.integration.mqtt.support.DefaultPahoMessageConverter;
import org.springframework.messaging.Message;
import org.springframework.messaging.MessageChannel;
import org.springframework.messaging.MessageHandler;
import org.springframework.messaging.MessagingException;
import org.springframework.stereotype.Service;

@Service
public class MqttService {

    private static final String URL = "tcp://demo.futurefarms.in:1883"; // Corrected URL
    private static final String CLIENT_ID = "serverIN";
    private static final String USERNAME = "ffagro";
    private static final String PASSWORD = "ff@gro";
    private static final String INBOUND_TOPIC = "#"; // Subscribe to all topics

    private Logger logger = LoggerFactory.getLogger(MqttService.class);

    @Bean
    public MqttPahoMessageDrivenChannelAdapter mqttInbound() throws Exception {
        MqttPahoMessageDrivenChannelAdapter adapter =
                new MqttPahoMessageDrivenChannelAdapter(CLIENT_ID, getClientFactory(), INBOUND_TOPIC);
        adapter.setQos(2);
        logger.info("Connected to: " + adapter.getConnectionInfo());
        adapter.setConverter(new DefaultPahoMessageConverter());
        adapter.setOutputChannel(mqttInOutChannel()); // Ensure this matches the defined channel

        return adapter;
    }

    // Create the MQTT client factory for publishing messages
    @Bean
    public MqttPahoClientFactory getClientFactory() throws MqttException {
        DefaultMqttPahoClientFactory clientFactory = new DefaultMqttPahoClientFactory();
        MqttConnectOptions options = new MqttConnectOptions();
        options.setCleanSession(true);
        options.setUserName(USERNAME);
        options.setPassword(PASSWORD.toCharArray());
        options.setServerURIs(new String[]{URL});
        clientFactory.setConnectionOptions(options);
        logger.info("Connecting to: " + options.getUserName() + "...");
        return clientFactory;
    }

    @Bean
    @ServiceActivator(inputChannel = "mqttOutputChannel")
    public MessageHandler mqttOutBound() throws Exception {
        // Create the MQTT adapter to publish messages
        MqttPahoMessageHandler mh = new MqttPahoMessageHandler("MQTTServerout", getClientFactory());
        mh.setDefaultTopic("test/myTopic");
        mh.setAsync(true);
        logger.info("MQTTServerout: " + mh.getConnectionInfo());
        return mh;
    }

    @MessagingGateway(defaultRequestChannel = "mqttOutputChannel")
    public interface MqttGateway {
        void sendToMqtt(String data);
    }

    @Bean
    public MessageChannel mqttInOutChannel() throws Exception {
        // Create a publish-subscribe channel for receiving messages
        return new PublishSubscribeChannel();
    }

    @Bean
    @ServiceActivator(inputChannel = "mqttInOutChannel")
    public MessageHandler mqttHandler() {
        return new MessageHandler() {
            @Override
            public void handleMessage(Message<?> message) throws MessagingException {
                // Log received message payload
                logger.info("Received message: " + message.getPayload());
                System.out.println("Received message: " + message.getPayload());
            }
        };
    }
}