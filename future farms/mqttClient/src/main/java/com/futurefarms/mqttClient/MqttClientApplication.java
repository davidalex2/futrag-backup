package com.futurefarms.mqttClient;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.integration.dsl.IntegrationFlow;
import org.springframework.integration.mqtt.inbound.MqttPahoMessageDrivenChannelAdapter;
import org.springframework.integration.mqtt.outbound.MqttPahoMessageHandler;


@SpringBootApplication
public class MqttClientApplication {


	public static void main(String[] args) {
		SpringApplication.run(MqttClientApplication.class, args);
	}

}
