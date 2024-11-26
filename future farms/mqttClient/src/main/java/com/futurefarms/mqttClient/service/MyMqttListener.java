package com.futurefarms.mqttClient.service;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.eclipse.paho.client.mqttv3.MqttMessage;

public class MyMqttListener {
    private Logger logger = LogManager.getLogger(MyMqttListener.class);

    public void messageArrived(String topic, MqttMessage message) throws Exception {
        String payload = new String(message.getPayload());
        logger.info("Received MQTT message: " + payload);

        // Process the message payload here, for example, call saveToFile
        FileCreatorService fileCreatorService = new FileCreatorService();
        String deviceName = fileCreatorService.extractDeviceNameFromPayload(payload);
        fileCreatorService.saveToFile(deviceName, payload);
    }
}

