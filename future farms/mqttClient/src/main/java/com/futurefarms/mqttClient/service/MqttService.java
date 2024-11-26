package com.futurefarms.mqttClient.service;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.eclipse.paho.client.mqttv3.*;
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
import org.springframework.messaging.support.GenericMessage;
import org.springframework.stereotype.Service;

@Service
public class MqttService {

    private static final String URL = "tcp://demo.futurefarms.in:1883";
    private static final String CLIENT_ID = "serverIN";
    private static final String USERNAME = "ffagro";
    private static final String PASSWORD = "ff@gro";
    private static final String INBOUND_TOPIC = "test/#";

    private Logger logger = LogManager.getLogger(MqttService.class);

    private MqttClient mqttClient;
    private MqttConnectOptions connectOptions;

    @Bean
    public MqttPahoMessageDrivenChannelAdapter mqttInbound() throws MqttException {
        MqttPahoMessageDrivenChannelAdapter adapter =
                new MqttPahoMessageDrivenChannelAdapter(CLIENT_ID, getClientFactory(), INBOUND_TOPIC);
        adapter.setQos(2);
        logger.info("Connected to: " + adapter.getConnectionInfo());
        adapter.setConverter(new DefaultPahoMessageConverter());
        adapter.setOutputChannel(mqttInOutChannel());  // Ensure the message is passed to the correct channel
        return adapter;
    }


    @Bean
    public MqttPahoClientFactory getClientFactory() throws MqttException {
        DefaultMqttPahoClientFactory clientFactory = new DefaultMqttPahoClientFactory();
        MqttConnectOptions options = new MqttConnectOptions();
        options.setCleanSession(true);
        options.setUserName(USERNAME);
        options.setPassword(PASSWORD.toCharArray());
        options.setServerURIs(new String[]{URL});
        clientFactory.setConnectionOptions(options);
        logger.info("Connecting to: " + options.getUserName() + " at " + URL);
        return clientFactory;
    }

    @Bean
    @ServiceActivator(inputChannel = "mqttInOutChannel")
    public MessageHandler mqttOutBound() throws MqttException {
        MqttPahoMessageHandler mh = new MqttPahoMessageHandler("MQTTServerout", getClientFactory());
        mh.setDefaultTopic("test/myTopic");
        mh.setAsync(true);
        logger.info("MQTTServerout: " + mh.getConnectionInfo());


        return mh;
    }

    @MessagingGateway(defaultRequestChannel = "mqttInOutChannel")
    public interface MqttGateway {

        void sendToMqtt(String data);
    }

    @Bean
    public MessageChannel mqttInOutChannel() {
        mqttHandler().handleMessage(new GenericMessage<>("mqttInOutChannel"));
        return new PublishSubscribeChannel();
    }

    @ServiceActivator(inputChannel = "mqttInOutChannel")
    public MessageHandler mqttHandler() {
        return new MessageHandler() {
            @Override
            public void handleMessage(Message<?> message) {
                String payload = (String) message.getPayload();
                System.out.println("Received message: " + payload);
                // Custom logic to process the message
            }
        };
    }

    // Initialize the MQTT client and callback handler

    @ServiceActivator(inputChannel = "mqttInOutChannel")
    public void initializeMqttClient() throws MqttException {
        mqttClient = new MqttClient(URL, CLIENT_ID);

        // Define connection options
        connectOptions = new MqttConnectOptions();
        connectOptions.setUserName(USERNAME);
        connectOptions.setPassword(PASSWORD.toCharArray());
        connectOptions.setCleanSession(true);

        // Set custom callback handler
        mqttClient.setCallback(new MqttCallback() {
            @Override
            public void connectionLost(Throwable cause) {
                System.err.println("Connection lost: " + cause.getMessage());
            }

            @Override
            public void messageArrived(String topic, MqttMessage message) {
                String payload = new String(message.getPayload());
                System.out.println("Message received on topic [" + topic + "]: " + payload);

                // Call the Spring Integration message handler here
                // Simulating calling the handler manually:
                mqttHandler().handleMessage(new GenericMessage<>(payload));
            }

            @Override
            public void deliveryComplete(IMqttDeliveryToken token) {
                System.out.println("Message delivered: " + token.getMessageId());
            }
        });

        mqttClient.connect(connectOptions);
        mqttClient.subscribe(INBOUND_TOPIC);
    }
}



//    @Bean
//    @ServiceActivator(inputChannel = "mqttInOutChannel")
//    public MessageHandler mqttHandler() {
//        logger.info("You are inside the message handler");
//        FileCreatorService fileCreatorService = new FileCreatorService();
//        fileCreatorService.saveToFile("d2", "hi hello world");
//        return new MessageHandler() {
//
//            @Override
//            public void handleMessage(Message<?> message) throws MessagingException {
//                logger.info("You are inside the message receiver");
//                FileCreatorService fileCreatorService = new FileCreatorService();
//                String payload = (String) message.getPayload();
//                logger.debug("Received message: " + payload);
//
//                // Extract device name and log it
//                String deviceName = fileCreatorService.extractDeviceNameFromPayload(payload);
//                if (deviceName != null) {
//                    logger.debug("Extracted device name: " + deviceName);
//                    try {
//                        // Save the message to a file using the device name
//                        fileCreatorService.saveToFile("d2", "hi hello new word");
//                    } catch (Exception e) {
//                        logger.error("Error saving file: " + e.getMessage(), e);
//                    }
//                } else {
//                    logger.warn("Device name could not be extracted from payload.");
//                }
//            }
//        };
//    }

