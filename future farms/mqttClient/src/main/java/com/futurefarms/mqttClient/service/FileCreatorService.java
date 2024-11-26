package com.futurefarms.mqttClient.service;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

public class FileCreatorService {
    private Logger logger = LogManager.getLogger(FileCreatorService.class);

    public void saveToFile(String deviceName, String payload) {
        Path dirPath = Paths.get("C:\\Users\\Admin\\Documents\\sample_test_conf");
        LocalDateTime now = LocalDateTime.now();
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
        String today = now.format(formatter);

        // Check if the directory exists, if not create it
        try {
            if (!Files.exists(dirPath)) {
                Files.createDirectories(dirPath);
                logger.info("Directory created: " + dirPath.toString());
            }

            // Specify the file name using the device name
            String filename =   deviceName+"_" + today + ".txt";
            Path filePath = dirPath.resolve(filename); // Create a Path object for the file

            // Create the file if it doesn't exist
            File file = new File(filePath.toString());
            if (file.createNewFile()) {
                logger.info("File created: " + file.getName());
            } else {
                logger.info("File already exists: " + file.getName());
            }

            // Prepare the text to write
            DateTimeFormatter timeFormatter = DateTimeFormatter.ofPattern("HH:mm:ss");

            // Write to the file
            try (BufferedWriter writer = new BufferedWriter(new FileWriter(file, true))) {
                writer.write("[" + now.format(timeFormatter) + "] " + payload);
                writer.newLine();
                logger.info("Text written to the file successfully.");
            } catch (IOException e) {
                logger.error("Error writing to the file: " + e.getMessage());
            }

        } catch (IOException e) {
            logger.error("An error occurred while creating the directory or file: " + e.getMessage());
        }
    }

    public String extractDeviceNameFromPayload(String payload) {
        String deviceName = "Unknown";
        try {
            // Assuming the payload is a simple JSON-like structure like {devicename:d1}
            String cleanPayload = payload.replaceAll("[{}]", "");
            String[] parts = cleanPayload.split(",");

            for (String part : parts) {
                if (part.contains("devicename")) {
                    deviceName = part.split(":")[1].trim();
                    logger.info("Found device name: " + deviceName);
                    break;
                }
            }
        } catch (Exception e) {
            logger.error("Error extracting device name: " + e.getMessage());
        }
        return deviceName;
    }
}
