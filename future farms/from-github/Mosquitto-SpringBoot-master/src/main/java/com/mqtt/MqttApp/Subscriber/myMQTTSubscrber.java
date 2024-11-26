package com.mqtt.MqttApp.Subscriber;

import org.eclipse.paho.client.mqttv3.IMqttDeliveryToken;
import org.eclipse.paho.client.mqttv3.MqttCallback;
import org.eclipse.paho.client.mqttv3.MqttException;
import org.eclipse.paho.client.mqttv3.MqttMessage;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.context.event.ApplicationReadyEvent;
import org.springframework.context.event.EventListener;
import org.springframework.stereotype.Component;

import com.mqtt.MqttApp.config.Mqtt;

@Component
public class myMQTTSubscrber implements MqttCallback  {
	
	@Autowired
	Mqtt mqtt;
	
	public myMQTTSubscrber() {
	}

	@EventListener(ApplicationReadyEvent.class)
	private void subscibe() {
		try {
			mqtt.getInstance().setCallback(this);
			mqtt.getInstance().subscribe("Truck00123");
		} catch (MqttException e) {
			// TODO Auto-generated catch block
System.out.println("unable to subscribe");		}
		
	}
	@Override
	public void connectionLost(Throwable cause) {
		// TODO Auto-generated method stub

	}

	@Override
	public void messageArrived(String topic, MqttMessage message) throws Exception {
System.out.println("topic : "+ topic +"Message : "+message.toString());
	}

	@Override
	public void deliveryComplete(IMqttDeliveryToken token) {
		// TODO Auto-generated method stub

	}

}
