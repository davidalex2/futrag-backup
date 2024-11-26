package com.futurefarms.mqttClient;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.integration.dsl.IntegrationFlow;
import org.springframework.integration.mqtt.inbound.MqttPahoMessageDrivenChannelAdapter;


@SpringBootApplication
public class MqttClientApplication {


	public static void main(String[] args) {
		SpringApplication.run(MqttClientApplication.class, args);
	}


}
