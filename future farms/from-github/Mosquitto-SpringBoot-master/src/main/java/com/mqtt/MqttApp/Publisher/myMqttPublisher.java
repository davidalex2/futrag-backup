package com.mqtt.MqttApp.Publisher;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.InetAddress;
import java.net.URL;

import org.eclipse.paho.client.mqttv3.MqttException;
import org.eclipse.paho.client.mqttv3.MqttMessage;
import org.eclipse.paho.client.mqttv3.MqttPersistenceException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.ApplicationArguments;
import org.springframework.boot.ApplicationRunner;
import org.springframework.boot.context.event.ApplicationReadyEvent;
import org.springframework.context.event.EventListener;
import org.springframework.core.env.Environment;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import com.mqtt.MqttApp.config.Mqtt;

@Component
public class myMqttPublisher implements ApplicationRunner {

	@Autowired
	Mqtt mqtt;

	@Autowired
	private Environment environment;

	String systemipaddress = "Conecting...";
	@Scheduled(fixedRate = 10000)
	public void handlePub() throws MqttPersistenceException, MqttException {
		String msg2 = "{\n" + 
				"		\"station\":\"Alpha\",\n" + 
				"		\"id\": \"Truck00123\",\n" + 
				"		\"ip\": \""+systemipaddress+"\",\n" + 
				"        \"status\": \"Online\"\n" + 
				"}";  
		System.out.println(msg2);
		MqttMessage mqttMessage2 = new MqttMessage(msg2.getBytes());
		mqtt.getInstance().publish("Identify-Yourself", mqttMessage2);
	}

	@EventListener(ApplicationReadyEvent.class)
	public void handleStartUp() throws MqttPersistenceException, MqttException {
		String msg1 = "{\n" + 
				"		\"station\":\"Alpha\",\n" + 
				"		\"id\": \"Truck00123\",\n" + 
				"		\"ip\": \""+systemipaddress+"\"\n" + 
				"}";
		System.out.println(msg1);
		MqttMessage mqttMessage1 = new MqttMessage(msg1.getBytes());
		mqtt.getInstance().publish("Identify-Yourself", mqttMessage1);
	}
	
	  public void messageArrived(String topic, MqttMessage message) throws MqttException {
	        System.out.println(String.format("[%s] %s", topic, new String(message.getPayload())));
	    }

	@Override
	public void run(ApplicationArguments args) throws Exception {
		System.out.println(environment.getProperty("java.rmi.server.hostname"));
		System.out.println(environment.getProperty("local.server.port"));
		System.out.println(InetAddress.getLocalHost().getHostAddress());
		
        try
        { 
            URL url_name = new URL("http://bot.whatismyipaddress.com"); 
  
            BufferedReader sc = 
            new BufferedReader(new InputStreamReader(url_name.openStream())); 
  
            // reads system IPAddress 
            systemipaddress = sc.readLine().trim(); 
        } 
        catch (Exception e) 
        { 
            systemipaddress = "Cannot Execute Properly"; 
        } 
        System.out.println("Public IP Address: " + systemipaddress +"\n"); 

	}
}
