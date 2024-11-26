package com.mqtt.MqttApp.config;

import javax.annotation.PostConstruct;

import org.apache.activemq.ActiveMQConnectionFactory;
import org.apache.activemq.jms.pool.PooledConnectionFactory;
import org.eclipse.paho.client.mqttv3.IMqttClient;
import org.eclipse.paho.client.mqttv3.MqttClient;
import org.eclipse.paho.client.mqttv3.MqttConnectOptions;
import org.eclipse.paho.client.mqttv3.MqttException;
import org.springframework.stereotype.Component;

@Component
public class Mqtt {
	private static final String MQTT_PUBLISHER_ID = "spring-server";
	private static final String MQTT_SERVER_ADDRES= "tcp://192.168.1.60:1883";
	private IMqttClient instance;
	
	@PostConstruct
	private void connectToMqtt() {
		try {
			if (instance == null) {
				instance = new MqttClient(MQTT_SERVER_ADDRES, MQTT_PUBLISHER_ID);
			}

			MqttConnectOptions options = new MqttConnectOptions();
			options.setUserName("admin");
			options.setPassword("admin123".toCharArray());
			options.setAutomaticReconnect(true);
			options.setCleanSession(true);
			options.setConnectionTimeout(10);

			if (!instance.isConnected()) {
				instance.connect(options);
			}
		} catch (MqttException e) {
			e.printStackTrace();
		}
	}
	
	public IMqttClient getInstance() {
		return instance;
	}

	private Mqtt() {

	}
}
