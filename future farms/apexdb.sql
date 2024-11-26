-- --------------------------------------------------------
-- Host:                         plai.futurefarms.in
-- Server version:               8.0.40-0ubuntu0.20.04.1 - (Ubuntu)
-- Server OS:                    Linux
-- HeidiSQL Version:             12.8.0.6908
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dumping data for table apexdb.alerts: ~67 rows (approximately)
INSERT IGNORE INTO `alerts` (`id`, `name`, `tag_name`, `device_id`, `project_id`, `customer_id`, `user_id`, `low_threshold`, `high_threshold`, `actions`, `sms`, `push_notification`, `email`, `timestamp`, `low_title`, `high_title`, `high_message`, `low_message`, `high_message_title`, `low_message_title`, `farm_id`, `sms_flag`, `email_flag`, `notification_flag`, `equal_message`, `equal_title`, `threshold_type`, `equal_threshold`, `status`, `alert_type`, `setpointreference`) VALUES
	(_binary 0x024e563f0ff84534a922e31d9b893eca, 'Water Level', 'waterlevel', '0c9346d0-2262-11eb-b0df-c5da61286deb', 'd7e6fb28-920f-43fb-94d2-b0db223fc4ca', '5bc5e361-11e0-4bde-86f6-782fffd682ab', 'sameer@techxellance.com', '', '', NULL, 'null', '[{"user_id":"Ml8VAMPkgxs71W9p933Xtl9pWxB"},{"user_id":"Ml8VAMPkgxs71W9p933Xtl9pWxB"},{"user_id":"Ml8VAMPkgxs71W9p933Xtl9pWxB"},{"user_id":"Ml8VAMPkgxs71W9p933Xtl9pWxB"},{"user_id":"Ml8VAMPkgxs71W9p933Xtl9pWxB"}]', 'null', '2022-08-12 11:32:20', NULL, NULL, '', '', '', '', '7443d31d-c809-43ab-82df-90b6e2714398', 0, 0, 1, 'Water Level low in T9', 'Equal', 'equal_threshold', 'LOW', 'true', 'default', NULL),
	(_binary 0x0415bffb72624d8ab27b4cac315a24b9, 'ec alert', 'ec', '7e00b320-d333-11eb-8444-e5aba28e0877', 'c7e18775-dcb5-43cd-81b1-5a3c5953949f', 'f312df43-1d92-41d7-8e00-f23d572249a7', 'lNXQ5xD65nfRxBR73OKrT6LlgEJ', '0.9', '1.3', NULL, 'null', '[{"user_id":"lNXQ5xD65nfRxBR73OKrT6LlgEJ","message":null}]', 'null', '2023-07-21 06:50:32', NULL, NULL, 'high ec', 'low ec', 'High', 'Low', '94b33301-7a23-4757-8ecc-84d60edb6fc0', 0, 0, 1, '', 'Equal', 'low_high_threshold', '', 'true', 'default', NULL),
	(_binary 0x055ad085071e484781501509e84a4de8, 'test', 'Potential Hydregon', 'a1a022a0-1617-11ef-af0a-7186c36e3fbd', 'DEFAULT_PROJECT_ID', 'a0a45fa6-9749-47c1-b4c8-77cb8c88c0ba', 'ffademo@futurefarms.in', '5', '8', NULL, 'null', '[{"user_id":"koEtwFvMW8u0hYLD0AGhLXqLOOf"}]', 'null', '2024-10-16 07:03:43', NULL, NULL, 'high is 8', 'low is 5', 'High', 'Low', '0762caec-f6b5-4300-91fe-22cdcb3c615d', 0, 0, 0, '', 'Equal', 'low_high_threshold', '', NULL, NULL, NULL),
	(_binary 0x07130773804a4962af1ce55b3f8c0629, 'Humidity', 'humid', '15a14c00-a202-11ed-81b0-3bea86339e4f', '0b23879e-380c-408c-b8e0-f58772935ea9', '12fb2c75-d8aa-4ed3-bdcb-4d587c6e2e57', 'ffademo@futurefarms.in', '55', '85', NULL, 'null', '[{"user_id":null,"message":null}]', 'null', '2024-11-05 07:12:36', NULL, NULL, NULL, NULL, '', '', '8c899e47-ce31-4b52-883c-1c8e98a21e2b', 0, 0, 1, '', '', 'low_high_threshold', '', 'true', 'custom', NULL),
	(_binary 0x18f1f1bc210c4bd5b0c33f9daeab22cf, 'Low Water Alert', 'waterlevel', '5c374660-7a54-11eb-b0df-c5da61286deb', '1a673c5f-4db9-42bf-8589-b17777714cbd', 'a0c5d5d0-fc1d-4cd0-9905-4147e13da779', 'uday@livfreshfarms.com', '', '', NULL, 'null', '[{"user_id":"G1nZrQr9xgC8n0R4VlKrI3zGn3Q"},{"user_id":"G1nZrQr9xgC8n0R4VlKrI3zGn3Q"}]', 'null', '2022-08-13 17:54:59', NULL, NULL, '', '', '', '', 'baea344c-16ed-4bb1-ac42-6c408c18dfb5', 0, 1, 1, 'MGS2 - Water Level', 'Equal', 'equal_threshold', 'Low', 'true', 'default', NULL),
	(_binary 0x207009f63de143dfb8e9113c4a9dca9a, 'Nursery Tank Low Alert', 'waterlevel3', '024308d0-eb51-11ee-af0a-7186c36e3fbd', 'fe45547a-fe74-455c-a43f-007ee3385285', 'a5e54400-051b-4687-b022-2679b5105b98', 'marketing@silentshoresresort.com', NULL, NULL, NULL, 'null', '[{"user_id":"RSB4P9ec4HJNuxU19IojBG30x9i","message":null}]', 'null', '2024-04-25 06:40:25', NULL, NULL, '', '', 'High', 'Low', '0cc16f37-619c-4a3f-a576-f75ccab6b3a2', 0, 0, 0, 'Nursery Tank is', 'Equal', 'equal_threshold', 'LOW', 'true', 'default', NULL),
	(_binary 0x2080ab9983454dab901ec13196d969e4, 'Temperature Alert', 'temp', 'a092cb20-2b22-11ec-b7fe-41e6cda473ac', '20a2390d-f451-4db2-8160-bdbb7911b855', 'f312df43-1d92-41d7-8e00-f23d572249a7', 'customer@gmail.com', '24', '28', NULL, 'null', '[{"user_id":"oCJ9ip2Y4JdwEP05xMWNt2lGqlk"},{"user_id":"0Vdqsfey8i8xK4NCjJR6361WAuu"}]', 'null', '2023-12-20 06:16:33', NULL, NULL, 'High', 'Low', 'High', 'Low', '5708807b-4f81-4f0d-8f32-04601b8e4ec8', 0, 1, 1, '', '', 'low_high_threshold', '', 'true', 'default', NULL),
	(_binary 0x2a122f3e09e14416b08dd072426a8c9a, 'pH Alert', 'ph', '8a2f9830-06f2-11ec-b7fe-41e6cda473ac', 'c7e18775-dcb5-43cd-81b1-5a3c5953949f', 'f312df43-1d92-41d7-8e00-f23d572249a7', 'customer@gmail.com', '3.8', '7.8', NULL, 'null', '[{"user_id":"hmjoL12wzOwECCPfUF2NOd2AcH5","message":null},{"user_id":"oCJ9ip2Y4JdwEP05xMWNt2lGqlk","message":null}]', 'null', '2023-07-21 06:50:16', NULL, NULL, 'pH level is', 'pH level is', 'High', 'Low', '94b33301-7a23-4757-8ecc-84d60edb6fc0', 0, 1, 1, '', '', 'low_high_threshold', '', 'true', 'default', NULL),
	(_binary 0x2a30bbec57b448cdb97929263b00c687, 'Temperature', 'temp', '15a14c00-a202-11ed-81b0-3bea86339e4f', '0b23879e-380c-408c-b8e0-f58772935ea9', '12fb2c75-d8aa-4ed3-bdcb-4d587c6e2e57', 'ffdemo@futurefarms.in', '24', '28', NULL, 'null', '[{"user_id":null,"message":null},{"user_id":"sPW6tCgPSjFkNsutgbMEtYxpQcU","message":null}]', 'null', '2024-11-05 07:12:36', NULL, NULL, 'Temperature is', 'Temperature is', 'High', 'Low', '8c899e47-ce31-4b52-883c-1c8e98a21e2b', 0, 1, 1, '', '', 'low_high_threshold', '', 'true', 'custom', NULL),
	(_binary 0x3039efdff2db4ee4ac1c428f6b3c8fa6, 'Water Level', 'waterlevel', 'b4b5f670-1ce3-11eb-b0df-c5da61286deb', 'd7e6fb28-920f-43fb-94d2-b0db223fc4ca', '5bc5e361-11e0-4bde-86f6-782fffd682ab', 'sameer@techxellance.com', '', '', NULL, 'null', '[{"user_id":"Ml8VAMPkgxs71W9p933Xtl9pWxB"}]', 'null', '2023-08-21 13:28:33', NULL, NULL, '', '', '', '', '7443d31d-c809-43ab-82df-90b6e2714398', 0, 0, 1, 'Water Level low in T1', 'Equal', 'equal_threshold', 'LOW', 'true', 'default', NULL),
	(_binary 0x335334d8b757442f860cf6e62da2e3e8, 'temperature', 'temp', '48137c50-e38a-11ea-a912-53759380b98d', 'fba17433-ec23-4365-a9bf-17b756a40213', '27b8a23e-08ac-4760-9afb-b498cb77ee35', '9M6R098VyVUXwGZJ043Js93n2r9', '29', '32', NULL, 'null', '[{"user_id":"9M6R098VyVUXwGZJ043Js93n2r9"}]', 'null', '2021-10-21 06:25:59', NULL, NULL, 'temperature high', 'temperature low', 'High', 'Low', '876587c2-d6af-414f-869a-f9ac87c1c060', 0, 1, 1, '', 'Equal', 'low_high_threshold', '', 'true', 'default', NULL),
	(_binary 0x3928bc12ac494bd8a3b8fb3eeaf5bbf0, 'Temperature', 'temp', '6ee80780-4030-11eb-b0df-c5da61286deb', 'c7e18775-dcb5-43cd-81b1-5a3c5953949f', 'f312df43-1d92-41d7-8e00-f23d572249a7', 'customer@gmail.com', '26', '35', NULL, 'null', '[{"user_id":"wvBmBJQYVWI1z2rNOzo6Hp7X6rK"},{"user_id":"g5QK7FaZPdB4qKeTE8dOODvWfdS"}]', 'null', '2023-11-25 10:30:05', NULL, NULL, 'High Temperature', 'Low Temperature', 'High', 'Low', '53024f77-ca66-4c73-93f1-e3e79e08cee8', 0, 1, 1, '', 'Equal', 'low_high_threshold', '', 'true', 'default', NULL),
	(_binary 0x39c49d0d93f24790b8aa63ee1348e6a9, 'Humidity', 'humid', '48137c50-e38a-11ea-a912-53759380b98d', 'fba17433-ec23-4365-a9bf-17b756a40213', '27b8a23e-08ac-4760-9afb-b498cb77ee35', '9M6R098VyVUXwGZJ043Js93n2r9', '50', '60', NULL, 'null', '[{"user_id":"P0PWNKP7NwI2V5JB3NNyHzr35lXD"},{"user_id":"9M6R098VyVUXwGZJ043Js93n2r9"}]', 'null', '2024-04-23 11:29:04', NULL, NULL, 'humidity high', 'humidity low', 'High', 'Low', '876587c2-d6af-414f-869a-f9ac87c1c060', 0, 1, 1, '', 'Equal', 'low_high_threshold', '', 'true', 'default', ''),
	(_binary 0x39f3544d356e4a9591951c229423cd45, 'Humidity', 'humid', 'ab914fc0-e5e5-11ea-a912-53759380b98d', 'c7e18775-dcb5-43cd-81b1-5a3c5953949f', 'f312df43-1d92-41d7-8e00-f23d572249a7', 'customer@gmail.com', '60', '80', NULL, 'null', '[{"user_id":"lNXQ5xD65nfRxBR73OKrT6LlgEJ"}]', 'null', '2024-02-13 04:51:15', NULL, NULL, 'High Humidity ', 'Low Humidity ', '', '', 'cab28d12-2b5c-4979-9137-aef03c15d8cc', 0, 0, 1, '', '', 'low_high_threshold', '', 'true', 'default', NULL),
	(_binary 0x3ac4cf7b4a1b423a91e9f0a5bd3b9fe8, 'PH', 'ph', '275ecb50-e389-11ea-a912-53759380b98d', 'fba17433-ec23-4365-a9bf-17b756a40213', '27b8a23e-08ac-4760-9afb-b498cb77ee35', '9M6R098VyVUXwGZJ043Js93n2r9', '5.6', '6.4', NULL, 'null', '[{"user_id":"9M6R098VyVUXwGZJ043Js93n2r9","message":null}]', 'null', '2022-03-29 06:55:21', NULL, NULL, 'high ph', 'low ph', 'High', 'Low', '99e751ac-2862-4c48-b2ea-a9937f5fa17a', 0, 1, 1, '', 'Equal', 'low_high_threshold', '', 'true', 'default', NULL),
	(_binary 0x4154900d4edc4799bb89ec53bcfaa341, 'Water Level', 'waterlevel', 'ab914fc0-e5e5-11ea-a912-53759380b98d', 'c7e18775-dcb5-43cd-81b1-5a3c5953949f', 'f312df43-1d92-41d7-8e00-f23d572249a7', 'lNXQ5xD65nfRxBR73OKrT6LlgEJ', '', '', NULL, 'null', '[{"user_id":"j1lovjBpLGCmRGOgwYwguWjvWNYx"},{"user_id":"Nz9jKq4v6DF2VpDwpKKPfBBMlK8"},{"user_id":"P890LODxA0U6gBE98onQfq65g05"},{"user_id":"lNXQ5xD65nfRxBR73OKrT6LlgEJ"}]', 'null', '2022-04-01 09:10:50', NULL, NULL, '', '', 'High', 'Low', 'cab28d12-2b5c-4979-9137-aef03c15d8cc', 0, 1, 1, 'Water level alert', 'Equal', 'equal_threshold', 'low', 'true', 'default', NULL),
	(_binary 0x45e6cd6729d74697b5cd6843ceab4ec4, 'Water Level', 'waterlevel', '15b624d0-2262-11eb-b0df-c5da61286deb', 'd7e6fb28-920f-43fb-94d2-b0db223fc4ca', '5bc5e361-11e0-4bde-86f6-782fffd682ab', 'sameer@techxellance.com', '', '', NULL, 'null', '[{"user_id":"Ml8VAMPkgxs71W9p933Xtl9pWxB"}]', 'null', '2023-08-08 10:30:38', NULL, NULL, '', '', '', '', '7443d31d-c809-43ab-82df-90b6e2714398', 0, 0, 1, 'Water Level low in N1', 'Equal', 'equal_threshold', 'LOW', 'true', 'default', NULL),
	(_binary 0x4701f2c7aaa844cb9b04105773936544, 'temp ALERT', 'temp', '1f55d380-32e6-11ef-af0a-7186c36e3fbd', 'xxxxx', 'lNXQ5xD65nfRxBR73OKrT6LlgEJ', 'lNXQ5xD65nfRxBR73OKrT6LlgEJ', '24.0', '34.0', NULL, 'null', '[{"user_id":"lNXQ5xD65nfRxBR73OKrT6LlgEJ","message":null}]', 'null', '2024-11-03 09:53:32', NULL, NULL, NULL, NULL, NULL, NULL, 'xxxxxxx', 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, '87ee61fb-6202-4409-953e-611ec696cc15'),
	(_binary 0x4773ee7987a44767921db945a8220a1c, 'Humidity Alert', 'humid', '5b8a4320-9ca8-11ed-81b0-3bea86339e4f', 'c7e18775-dcb5-43cd-81b1-5a3c5953949f', 'f312df43-1d92-41d7-8e00-f23d572249a7', 'oCJ9ip2Y4JdwEP05xMWNt2lGqlk', '65', '70', NULL, 'null', '[{"user_id":"oCJ9ip2Y4JdwEP05xMWNt2lGqlk","message":null}]', 'null', '2023-01-25 12:07:21', NULL, NULL, 'Humidity is', 'Humidity is', 'High', 'Low', '53cdd24d-e68d-4544-96c2-0a5df5c37609', 0, 1, 1, '', 'Equal', 'low_high_threshold', '', 'true', 'default', NULL),
	(_binary 0x49962dce288e40448f6e7c033b5907b6, 'Low Water Alert', 'waterlevel', '588e62a0-7a54-11eb-b0df-c5da61286deb', '1a673c5f-4db9-42bf-8589-b17777714cbd', 'a0c5d5d0-fc1d-4cd0-9905-4147e13da779', 'uday@livfreshfarms.com', '', '', NULL, 'null', '[{"user_id":"G1nZrQr9xgC8n0R4VlKrI3zGn3Q"}]', 'null', '2022-08-13 17:54:59', NULL, NULL, '', '', '', '', 'baea344c-16ed-4bb1-ac42-6c408c18dfb5', 0, 1, 1, 'MGS1: Water Level', 'Equal', 'equal_threshold', 'Low', 'true', 'default', NULL),
	(_binary 0x52701b1afabb420c8e4f9b934a8c9c41, 'Water Level', 'waterlevel', '88082cf0-540c-11eb-b0df-c5da61286deb', 'd7e6fb28-920f-43fb-94d2-b0db223fc4ca', '5bc5e361-11e0-4bde-86f6-782fffd682ab', 'sameer@techxellance.com', '', '', NULL, 'null', '[{"user_id":"Ml8VAMPkgxs71W9p933Xtl9pWxB"},{"user_id":"Ml8VAMPkgxs71W9p933Xtl9pWxB"}]', 'null', '2023-08-08 10:30:38', NULL, NULL, '', '', '', '', '7443d31d-c809-43ab-82df-90b6e2714398', 0, 0, 1, 'Water Level low microgreens', 'Equal', 'equal_threshold', 'LOW', 'true', 'default', NULL),
	(_binary 0x54025b8216984331820a6515cf874321, 'Water Level low in T6', 'waterlevel', 'f9d65f00-2261-11eb-b0df-c5da61286deb', 'd7e6fb28-920f-43fb-94d2-b0db223fc4ca', '5bc5e361-11e0-4bde-86f6-782fffd682ab', 'sameer@techxellance.com', '', '', NULL, 'null', '[{"user_id":"Ml8VAMPkgxs71W9p933Xtl9pWxB"},{"user_id":"Ml8VAMPkgxs71W9p933Xtl9pWxB"}]', 'null', '2023-08-08 10:30:38', NULL, NULL, '', '', '', '', '7443d31d-c809-43ab-82df-90b6e2714398', 0, 0, 1, 'Water Level low in T6', 'Equal', 'equal_threshold', 'LOW', 'true', 'default', NULL),
	(_binary 0x5f0356945be94c1ebbac0ae666ae6195, 'EC Alert', 'ec', '9f934450-a34d-11eb-b8d0-c39213c45dcd', '69f3f0b5-c850-4f08-ade8-6d437b597e14', '2938e824-b048-4a82-b7a9-6fc2ced1c986', 'freshlings.ea@futurefarms.in', '0.8', '1.3', NULL, 'null', '[{"user_id":"HZ4yfIuVoXJdD83nB3piubRRIDN"}]', 'null', '2021-10-29 06:37:27', NULL, NULL, 'EA - Your EC is HIGH', 'EA - Your EC is LOW', 'High', 'Low', '43705517-1761-41ab-8ec8-7a0206a61066', 0, 0, 0, '', '', 'low_high_threshold', '', 'true', 'default', NULL),
	(_binary 0x60ff3d65ea6641d4a31a8173d9bc41f3, 'Water Level', 'waterlevel', 'edcc66a0-2261-11eb-b0df-c5da61286deb', 'd7e6fb28-920f-43fb-94d2-b0db223fc4ca', '5bc5e361-11e0-4bde-86f6-782fffd682ab', 'sameer@techxellance.com', '', '', NULL, 'null', '[{"user_id":"Ml8VAMPkgxs71W9p933Xtl9pWxB"},{"user_id":"Ml8VAMPkgxs71W9p933Xtl9pWxB"},{"user_id":"Ml8VAMPkgxs71W9p933Xtl9pWxB"}]', 'null', '2023-08-08 10:30:38', NULL, NULL, '', '', '', '', '7443d31d-c809-43ab-82df-90b6e2714398', 0, 0, 1, 'Water Level low in T7', 'Equal', 'equal_threshold', 'LOW', 'true', 'default', NULL),
	(_binary 0x63a80be5d28e4da18f50b6b75b58fa0a, 'Humidity', 'humid', '5b644660-183e-11ec-b7fe-41e6cda473ac', 'c7e18775-dcb5-43cd-81b1-5a3c5953949f', 'f312df43-1d92-41d7-8e00-f23d572249a7', 'customer@gmail.com', '70', '99', NULL, 'null', '[{"user_id":"hmjoL12wzOwECCPfUF2NOd2AcH5"},{"user_id":"oCJ9ip2Y4JdwEP05xMWNt2lGqlk"}]', 'null', '2023-05-18 06:43:29', NULL, NULL, 'Temperature is', 'Humidity is', 'High', 'Low', '94b33301-7a23-4757-8ecc-84d60edb6fc0', 0, 1, 1, '', '', 'low_high_threshold', '', 'true', 'default', NULL),
	(_binary 0x64eeae7661f64e00afb1ad25c41d5baa, 'CO2 Alert', 'co2', 'c23771f0-2a95-11ec-b7fe-41e6cda473ac', 'c7e18775-dcb5-43cd-81b1-5a3c5953949f', 'f312df43-1d92-41d7-8e00-f23d572249a7', 'customer@gmail.com', '300', '700', NULL, 'null', '[{"user_id":"hmjoL12wzOwECCPfUF2NOd2AcH5"},{"user_id":"oCJ9ip2Y4JdwEP05xMWNt2lGqlk"}]', 'null', '2023-01-19 14:29:26', NULL, NULL, 'CO2 is', 'CO2 is', 'High', 'Low', 'e12b89a3-e386-46a1-8ae0-a69708ec57ae', 0, 0, 1, '', '', 'low_high_threshold', '', 'true', 'default', NULL),
	(_binary 0x66e6230c031f41ef99b15811ad3ad001, 'EC', 'ec', '19bfdb10-e389-11ea-a912-53759380b98d', 'fba17433-ec23-4365-a9bf-17b756a40213', '27b8a23e-08ac-4760-9afb-b498cb77ee35', '9M6R098VyVUXwGZJ043Js93n2r9', '0.5', '1.9', NULL, 'null', '[{"user_id":"9M6R098VyVUXwGZJ043Js93n2r9"}]', 'null', '2021-10-21 06:25:59', NULL, NULL, 'high ec', 'low ec', 'High', 'Low', '876587c2-d6af-414f-869a-f9ac87c1c060', 0, 1, 1, '', 'Equal', 'low_high_threshold', '', 'true', 'default', NULL),
	(_binary 0x6b8a09630dc24448bb524f93aa3c8326, 'CO2 Alert', 'co2', 'c387bc30-1cf5-11eb-b0df-c5da61286deb', 'd7e6fb28-920f-43fb-94d2-b0db223fc4ca', '5bc5e361-11e0-4bde-86f6-782fffd682ab', 'sameer@techxellance.com', '800', '1600', NULL, 'null', '[]', 'null', '2023-08-21 13:31:32', NULL, NULL, 'CO2 is', 'CO2 is', 'High', 'Low', '7443d31d-c809-43ab-82df-90b6e2714398', 0, 0, 0, '', '', 'low_high_threshold', '', 'true', 'default', NULL),
	(_binary 0x6d441391388641ceb1212f3b4d9f429d, 'High Humidity', 'humid', 'f46dbe30-b992-11ed-81b0-3bea86339e4f', 'fe45547a-fe74-455c-a43f-007ee3385285', 'a0a45fa6-9749-47c1-b4c8-77cb8c88c0ba', 'ffademo@futurefarms.in', '40', '90', NULL, 'null', '[{"user_id":"gGeVgSctLLgzDAHzdMceGkIM1xT","message":null}]', 'null', '2023-11-16 10:18:07', NULL, NULL, 'Humid is', 'Humid is', 'High', 'Low', '211e2854-9393-4491-942e-26253551b460', 0, 1, 1, '', 'Equal', 'low_high_threshold', '', 'true', 'default', NULL),
	(_binary 0x726bb08ad2144ef9b879d19de42d19c3, 'Temp.', 'wtemp', '19bfdb10-e389-11ea-a912-53759380b98d', 'fba17433-ec23-4365-a9bf-17b756a40213', '27b8a23e-08ac-4760-9afb-b498cb77ee35', '9M6R098VyVUXwGZJ043Js93n2r9', '19', '30', NULL, 'null', '[{"user_id":"9M6R098VyVUXwGZJ043Js93n2r9"}]', 'null', '2021-10-21 06:25:59', NULL, NULL, 'high temp.', 'low temp.', 'High', 'Low', '876587c2-d6af-414f-869a-f9ac87c1c060', 0, 1, 1, '', 'Equal', 'low_high_threshold', '', 'true', 'default', NULL),
	(_binary 0x72747bd945ce4c2abe31859b0d3b767a, 'humidity', 'humid', '97850ff0-e827-11ea-a912-53759380b98d', 'fba17433-ec23-4365-a9bf-17b756a40213', '27b8a23e-08ac-4760-9afb-b498cb77ee35', '9M6R098VyVUXwGZJ043Js93n2r9', '50', '70', NULL, 'null', '[{"user_id":"9M6R098VyVUXwGZJ043Js93n2r9","message":null}]', 'null', '2022-03-29 06:56:28', NULL, NULL, 'high humidity', 'low humidity', 'High', 'Low', '99e751ac-2862-4c48-b2ea-a9937f5fa17a', 0, 1, 1, '', 'Equal', 'low_high_threshold', '', 'true', 'default', NULL),
	(_binary 0x746b7d30ce4e47c6b646a7229acc4996, 'VPD ALERT', 'VPD', '1f55d380-32e6-11ef-af0a-7186c36e3fbd', 'xxxxx', 'lNXQ5xD65nfRxBR73OKrT6LlgEJ', 'lNXQ5xD65nfRxBR73OKrT6LlgEJ', '-0.1', '0.30000000000000004', NULL, 'null', '[{"user_id":"lNXQ5xD65nfRxBR73OKrT6LlgEJ","message":null}]', 'null', '2024-11-03 09:53:32', NULL, NULL, NULL, NULL, NULL, NULL, 'xxxxxxx', 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'b5069d64-b923-4d31-9639-10554cc930c5'),
	(_binary 0x76120f9af44c4a39b452b21b80dd934a, 'Temperature Alert', 'temp', '5b644660-183e-11ec-b7fe-41e6cda473ac', 'c7e18775-dcb5-43cd-81b1-5a3c5953949f', 'f312df43-1d92-41d7-8e00-f23d572249a7', 'customer@gmail.com', '20', '30', NULL, 'null', '[{"user_id":"hmjoL12wzOwECCPfUF2NOd2AcH5"},{"user_id":"oCJ9ip2Y4JdwEP05xMWNt2lGqlk"}]', 'null', '2023-05-18 06:43:29', NULL, NULL, 'Temperature is', 'Temperature is', 'High', 'Low', '94b33301-7a23-4757-8ecc-84d60edb6fc0', 0, 1, 1, '', '', 'low_high_threshold', '', 'true', 'default', NULL),
	(_binary 0x790124b459e240fa8f9dfea89a16c408, 'Water Level', 'waterlevel', 'd893d070-2261-11eb-b0df-c5da61286deb', 'd7e6fb28-920f-43fb-94d2-b0db223fc4ca', '5bc5e361-11e0-4bde-86f6-782fffd682ab', 'sameer@techxellance.com', '', '', NULL, 'null', '[{"user_id":"Ml8VAMPkgxs71W9p933Xtl9pWxB"}]', 'null', '2023-08-08 10:30:38', NULL, NULL, '', '', '', '', '7443d31d-c809-43ab-82df-90b6e2714398', 0, 0, 1, 'Water Level low in T5', 'Equal', 'equal_threshold', 'LOW', 'true', 'default', NULL),
	(_binary 0x7ec9e6a34fdb4523ae5c86aef3ecb20a, 'Temperature Alert', 'temp', 'c23771f0-2a95-11ec-b7fe-41e6cda473ac', 'c7e18775-dcb5-43cd-81b1-5a3c5953949f', 'f312df43-1d92-41d7-8e00-f23d572249a7', 'customer@gmail.com', '22', '28', NULL, 'null', '[{"user_id":"hmjoL12wzOwECCPfUF2NOd2AcH5"},{"user_id":"oCJ9ip2Y4JdwEP05xMWNt2lGqlk"}]', 'null', '2023-01-19 14:29:26', NULL, NULL, 'Temperature is', 'Temperature is', 'High', 'Low', 'e12b89a3-e386-46a1-8ae0-a69708ec57ae', 0, 0, 1, '', '', 'low_high_threshold', '', 'true', 'default', NULL),
	(_binary 0x7f869bbc54344248a5329657fe12c664, 'temp ALERT', 'temp', '96705da0-1617-11ef-af0a-7186c36e3fbd', 'xxxxx', 'gGeVgSctLLgzDAHzdMceGkIM1xT', 'gGeVgSctLLgzDAHzdMceGkIM1xT', '-54.0', '106.0', NULL, 'null', '[{"user_id":"gGeVgSctLLgzDAHzdMceGkIM1xT","message":null}]', 'null', '2024-11-04 11:47:49', NULL, NULL, NULL, NULL, NULL, NULL, 'xxxxxxx', 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, '6bc9f5fa-1e08-4c0c-839e-d4fde7af68a9'),
	(_binary 0x81aaae1414804837b663cff3f8140c87, 'Test', 'ph', 'e34fecc0-61cd-11ee-81b0-3bea86339e4f', 'fe45547a-fe74-455c-a43f-007ee3385285', 'a0a45fa6-9749-47c1-b4c8-77cb8c88c0ba', 'ffademo@futurefarms.in', '4', '7', NULL, 'null', '[{"user_id":"gGeVgSctLLgzDAHzdMceGkIM1xT"}]', 'null', '2024-10-01 10:14:51', NULL, NULL, 'High', 'Low', 'High', 'Low', 'c07ea97d-2f32-40f3-8821-a45cad761534', 0, 0, 0, '', 'Equal', 'lowhigh_threshold', NULL, 'true', 'custom', NULL),
	(_binary 0x8456e06aedaa419d873d71f40fbefe0a, 'Temp.', 'wtemp', '275ecb50-e389-11ea-a912-53759380b98d', 'fba17433-ec23-4365-a9bf-17b756a40213', '27b8a23e-08ac-4760-9afb-b498cb77ee35', '9M6R098VyVUXwGZJ043Js93n2r9', '20', '30', NULL, 'null', '[{"user_id":"9M6R098VyVUXwGZJ043Js93n2r9","message":null}]', 'null', '2022-03-29 06:55:21', NULL, NULL, 'high tem.', 'low tem.', 'High', 'Low', '99e751ac-2862-4c48-b2ea-a9937f5fa17a', 0, 1, 1, '', 'Equal', 'low_high_threshold', '', 'true', 'default', NULL),
	(_binary 0x858e5b29443c4d028afceb73ffe350f0, 'Water Level', 'waterlevel', '10b30840-2262-11eb-b0df-c5da61286deb', 'd7e6fb28-920f-43fb-94d2-b0db223fc4ca', '5bc5e361-11e0-4bde-86f6-782fffd682ab', 'sameer@techxellance.com', '', '', NULL, 'null', '[{"user_id":"Ml8VAMPkgxs71W9p933Xtl9pWxB"}]', 'null', '2022-08-12 11:32:20', NULL, NULL, '', '', '', '', '7443d31d-c809-43ab-82df-90b6e2714398', 0, 0, 1, 'Water Level low in T10', 'Equal', 'equal_threshold', 'LOW', 'true', 'default', NULL),
	(_binary 0x86d77fb2bcbd4e5bb9154b4b0934c20b, 'testr two', 'Irrigation Remaining', 'a1a022a0-1617-11ef-af0a-7186c36e3fbd', 'DEFAULT_PROJECT_ID', 'a0a45fa6-9749-47c1-b4c8-77cb8c88c0ba', 'ffademo@futurefarms.in', NULL, NULL, NULL, 'null', '[{"user_id":"koEtwFvMW8u0hYLD0AGhLXqLOOf"}]', 'null', '2024-10-16 07:03:43', NULL, NULL, NULL, NULL, 'High', 'Low', '0762caec-f6b5-4300-91fe-22cdcb3c615d', 0, 0, 0, 'equal is 5', 'Equal', 'equal_threshold', '6', NULL, NULL, NULL),
	(_binary 0x8a9257a7ba604dc08dd2f73ed754fd5e, 'Temperature', 'temp', '735d12a0-9dab-11eb-b8d0-c39213c45dcd', '7be7e0c5-6a55-44e8-9de1-1b8e9eb427f4', 'd811329c-6225-4095-bb9c-0ac93b0c2cd6', 'mx0zDQVwlVUBz24EEjZpSG3Gy6EE', '25', '40', NULL, 'null', '[{"user_id":"75oNgzpQ5wsYjlO9MGp5hpoR4MP"},{"user_id":"xBYLnB0l97UyVLwQDN0Zh6jg6yN"},{"user_id":"WMDnDp95jJC4AKqkRKNOTjrMDrx"},{"user_id":"mx0zDQVwlVUBz24EEjZpSG3Gy6EE"}]', 'null', '2021-09-21 11:09:18', NULL, NULL, 'High Temperature ', 'Low Temperature ', 'High', 'Low', '5dc7a88c-8f1d-4633-9766-b6c894f903c7', 0, 1, 1, '', 'Equal', 'low_high_threshold', '', 'true', 'default', NULL),
	(_binary 0x8bef61c967e1422bba3d74e38bf5e949, 'ec alert', 'Electrons Conductivity', 'fcaeed40-8f9b-11ef-881e-4d68b18c074d', 'DEFAULT_PROJECT_ID', 'a0a45fa6-9749-47c1-b4c8-77cb8c88c0ba', 'ffademo@futurefarms.in', '0.5', '1.5', NULL, 'null', '[{"user_id":null,"message":null}]', 'null', '2024-11-19 10:25:28', NULL, NULL, 'high ec', 'low ec', 'High', 'Low', '619a3664-bf7e-4de2-bf82-41e1b621720d', 0, 0, 0, '', 'Match Alert', 'lowhigh_threshold', '', 'true', 'custom', NULL),
	(_binary 0x8c548074f18f4d17a5e0689aa47ef7ea, 'Test Alert', 'humid', 'dd61fb00-ce46-11ea-a46f-5b38e316df4d', 'c7e18775-dcb5-43cd-81b1-5a3c5953949f', 'f312df43-1d92-41d7-8e00-f23d572249a7', 'customer@gmail.com', '70', '75', NULL, 'null', '[]', 'null', '2024-03-29 10:14:57', NULL, NULL, 'high', 'low', 'High', 'Low', '53024f77-ca66-4c73-93f1-e3e79e08cee8', 0, 0, 0, '', '', 'low_high_threshold', '', 'false', 'default', NULL),
	(_binary 0x9dfae1faea8b4a068d1ae18a20b4b1f1, 'New', 'v6', 'e34fecc0-61cd-11ee-81b0-3bea86339e4f', 'fe45547a-fe74-455c-a43f-007ee3385285', 'a0a45fa6-9749-47c1-b4c8-77cb8c88c0ba', 'ffademo@futurefarms.in', NULL, NULL, NULL, 'null', '[{"user_id":"gGeVgSctLLgzDAHzdMceGkIM1xT"}]', 'null', '2024-10-01 10:14:51', NULL, NULL, '', '', 'High', 'Low', 'c07ea97d-2f32-40f3-8821-a45cad761534', 0, 0, 0, '', 'Equal', 'lowhigh_threshold', 'ON', 'true', 'custom', NULL),
	(_binary 0xa109db545b4e4e248a6f4bba93d9398b, 'EC', 'ec', '275ecb50-e389-11ea-a912-53759380b98d', 'fba17433-ec23-4365-a9bf-17b756a40213', '27b8a23e-08ac-4760-9afb-b498cb77ee35', '9M6R098VyVUXwGZJ043Js93n2r9', '0.7', '2.6', NULL, 'null', '[{"user_id":"9M6R098VyVUXwGZJ043Js93n2r9","message":null}]', 'null', '2022-03-29 06:55:21', NULL, NULL, 'high ec', 'low ec', 'High', 'Low', '99e751ac-2862-4c48-b2ea-a9937f5fa17a', 0, 1, 1, '', 'Equal', 'low_high_threshold', '', 'true', 'default', NULL),
	(_binary 0xa1eab8ceb8b94c999d0c383c495f8d9a, 'Program 1', 'event', '1cfca4a0-7b9b-11ed-81b0-3bea86339e4f', 'f61b1172-58d4-4b5d-bac7-fac482d071ee', 'f312df43-1d92-41d7-8e00-f23d572249a7', 'lNXQ5xD65nfRxBR73OKrT6LlgEJ', '', '', NULL, 'null', '[{"user_id":"lNXQ5xD65nfRxBR73OKrT6LlgEJ"}]', 'null', '2023-01-21 11:19:49', NULL, NULL, '', '', 'High', 'Low', 'ab422f45-5f3e-4c2e-9767-a77634912346', 0, 0, 1, 'Program 1 is started ', 'Equal', 'equal_threshold', '90', 'true', 'default', NULL),
	(_binary 0xa6b377a7495242d79de8ba42433d28e4, 'humid ALERT', 'humid', '958f3dc0-0e06-11ef-af0a-7186c36e3fbd', 'xxxxx', 'gGeVgSctLLgzDAHzdMceGkIM1xT', 'gGeVgSctLLgzDAHzdMceGkIM1xT', '1.0', '3.0', NULL, 'null', '[{"user_id":"gGeVgSctLLgzDAHzdMceGkIM1xT","message":null}]', 'null', '2024-11-20 10:34:46', NULL, NULL, NULL, NULL, NULL, NULL, 'xxxxxxx', 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, '66573b6d-88d5-4aa8-954a-c9bafe0d2dd9'),
	(_binary 0xa947c681e877489b933ae418c56e95b3, 'Water Level ', 'waterlevel', '25b74db0-1ea1-11eb-b0df-c5da61286deb', 'd7e6fb28-920f-43fb-94d2-b0db223fc4ca', '5bc5e361-11e0-4bde-86f6-782fffd682ab', 'sameer@techxellance.com', '', '', NULL, 'null', '[{"user_id":"Ml8VAMPkgxs71W9p933Xtl9pWxB"},{"user_id":"Ml8VAMPkgxs71W9p933Xtl9pWxB"}]', 'null', '2023-08-08 10:30:38', NULL, NULL, '', '', '', '', '7443d31d-c809-43ab-82df-90b6e2714398', 0, 0, 1, 'Water Level low in T2', 'Equal', 'equal_threshold', 'LOW', 'true', 'default', NULL),
	(_binary 0xaba3abfd0be0437bb9d5755dc1a17046, 'temp ALERT', 'temp', '958f3dc0-0e06-11ef-af0a-7186c36e3fbd', 'xxxxx', 'gGeVgSctLLgzDAHzdMceGkIM1xT', 'gGeVgSctLLgzDAHzdMceGkIM1xT', '16.0', '34.0', NULL, 'null', '[{"user_id":"gGeVgSctLLgzDAHzdMceGkIM1xT","message":null}]', 'null', '2024-11-20 11:17:00', NULL, NULL, NULL, NULL, NULL, NULL, 'xxxxxxx', 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, '7329c631-fdd1-41d8-8b28-2c3146be8ec5'),
	(_binary 0xb550dee9432a4ae4a0bcb0a9050d20ea, 'HUMIDITY', 'humid', 'dd61fb00-ce46-11ea-a46f-5b38e316df4d', 'c7e18775-dcb5-43cd-81b1-5a3c5953949f', 'f312df43-1d92-41d7-8e00-f23d572249a7', 'customer@gmail.com', '75', '77', NULL, 'null', '[{"user_id":"j1lovjBpLGCmRGOgwYwguWjvWNYx"},{"user_id":"Nz9jKq4v6DF2VpDwpKKPfBBMlK8"}]', 'null', '2024-03-28 06:05:54', NULL, NULL, NULL, NULL, 'High', 'Low', '53024f77-ca66-4c73-93f1-e3e79e08cee8', 0, 0, 0, '', '', 'low_high_threshold', '', 'true', 'default', NULL),
	(_binary 0xb7f472ce136349c58af49f8035fbff3f, 'A-Frame Tank Low Alert ', 'waterlevel2', '024308d0-eb51-11ee-af0a-7186c36e3fbd', 'fe45547a-fe74-455c-a43f-007ee3385285', 'a5e54400-051b-4687-b022-2679b5105b98', 'marketing@silentshoresresort.com', NULL, NULL, NULL, 'null', '[{"user_id":"RSB4P9ec4HJNuxU19IojBG30x9i","message":null}]', 'null', '2024-04-25 06:40:25', NULL, NULL, '', '', 'High', 'Low', '0cc16f37-619c-4a3f-a576-f75ccab6b3a2', 0, 0, 0, 'A-Frame Tank is', 'Equal', 'equal_threshold', 'LOW', 'true', 'default', NULL),
	(_binary 0xbc22142fe35f42219cfe4b3d16fdc085, 'Water Level', 'waterlevel', '07ecf040-2262-11eb-b0df-c5da61286deb', 'd7e6fb28-920f-43fb-94d2-b0db223fc4ca', '5bc5e361-11e0-4bde-86f6-782fffd682ab', 'sameer@techxellance.com', '', '', NULL, 'null', '[{"user_id":"Ml8VAMPkgxs71W9p933Xtl9pWxB"},{"user_id":"Ml8VAMPkgxs71W9p933Xtl9pWxB"},{"user_id":"Ml8VAMPkgxs71W9p933Xtl9pWxB"},{"user_id":"Ml8VAMPkgxs71W9p933Xtl9pWxB"}]', 'null', '2022-08-12 11:32:19', NULL, NULL, '', '', '', '', '7443d31d-c809-43ab-82df-90b6e2714398', 0, 0, 1, 'Water Level low in T8', 'Equal', 'equal_threshold', 'LOW', 'true', 'default', NULL),
	(_binary 0xc33bb24d34474d6299e510b22b185037, 'humid ALERT', 'humid', '1f55d380-32e6-11ef-af0a-7186c36e3fbd', 'xxxxx', 'gGeVgSctLLgzDAHzdMceGkIM1xT', 'gGeVgSctLLgzDAHzdMceGkIM1xT', '-2.0', '12.0', NULL, 'null', '[{"user_id":"gGeVgSctLLgzDAHzdMceGkIM1xT","message":null}]', 'null', '2024-11-03 09:53:32', NULL, NULL, NULL, NULL, NULL, NULL, 'xxxxxxx', 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'bbdcfbd7-7377-4a9d-98a5-9a7735ea4093'),
	(_binary 0xc5820c8ab9874d9492b3de9264e4c0ea, 'temp ALERT', 'temp', '958f3dc0-0e06-11ef-af0a-7186c36e3fbd', 'xxxxx', 'gGeVgSctLLgzDAHzdMceGkIM1xT', 'gGeVgSctLLgzDAHzdMceGkIM1xT', '22.0', '28.0', NULL, 'null', '[{"user_id":"gGeVgSctLLgzDAHzdMceGkIM1xT","message":null}]', 'null', '2024-11-20 12:53:34', NULL, NULL, NULL, NULL, NULL, NULL, 'xxxxxxx', 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'f062ccfb-d07a-453b-83ab-4aad39e014a9'),
	(_binary 0xcbd7cd04c138468e8e1ff3b0f739f01d, 'EC Alert', 'ec', '8a2f9830-06f2-11ec-b7fe-41e6cda473ac', 'c7e18775-dcb5-43cd-81b1-5a3c5953949f', 'f312df43-1d92-41d7-8e00-f23d572249a7', 'customer@gmail.com', '0.5', '1.5', NULL, 'null', '[{"user_id":"hmjoL12wzOwECCPfUF2NOd2AcH5","message":null},{"user_id":"oCJ9ip2Y4JdwEP05xMWNt2lGqlk","message":null}]', 'null', '2023-07-21 06:50:16', NULL, NULL, 'EC level is', 'EC level is', 'High', 'Low', '94b33301-7a23-4757-8ecc-84d60edb6fc0', 0, 1, 1, '', '', 'low_high_threshold', '', 'true', 'default', NULL),
	(_binary 0xd11c0a1c08854b13886f78aea74cbfd0, 'Water Level ', 'waterlevel', '00732e60-2262-11eb-b0df-c5da61286deb', 'd7e6fb28-920f-43fb-94d2-b0db223fc4ca', '5bc5e361-11e0-4bde-86f6-782fffd682ab', 'sameer@techxellance.com', '', '', NULL, 'null', '[{"user_id":"Ml8VAMPkgxs71W9p933Xtl9pWxB"}]', 'null', '2023-08-08 10:30:38', NULL, NULL, '', '', '', '', '7443d31d-c809-43ab-82df-90b6e2714398', 0, 0, 1, 'Water Level low in T4', 'Equal', 'equal_threshold', 'LOW', 'true', 'default', NULL),
	(_binary 0xd1bbe9383c3d448fa2891ead9ef66ae8, 'Low flow rate alert', 'irrigation_flow', '8a2f9830-06f2-11ec-b7fe-41e6cda473ac', 'c7e18775-dcb5-43cd-81b1-5a3c5953949f', 'f312df43-1d92-41d7-8e00-f23d572249a7', 'customer@gmail.com', '6', '10', NULL, 'null', '[{"user_id":"hmjoL12wzOwECCPfUF2NOd2AcH5","message":null},{"user_id":"oCJ9ip2Y4JdwEP05xMWNt2lGqlk","message":null},{"user_id":"hmjoL12wzOwECCPfUF2NOd2AcH5","message":null},{"user_id":"oCJ9ip2Y4JdwEP05xMWNt2lGqlk","message":null}]', 'null', '2023-07-21 06:50:16', NULL, NULL, 'Irrigation flow rate is', 'Irrigation flow rate is', 'High', 'Low', '94b33301-7a23-4757-8ecc-84d60edb6fc0', 0, 1, 1, '', '', 'low_high_threshold', '', 'true', 'default', NULL),
	(_binary 0xd88842b4f1b846a78e609bd252e5ca77, 'Waterl evel', 'w-level', 'b61d15a0-f0f3-11ea-a912-53759380b98d', 'c7e18775-dcb5-43cd-81b1-5a3c5953949f', 'f312df43-1d92-41d7-8e00-f23d572249a7', 'lNXQ5xD65nfRxBR73OKrT6LlgEJ', '', '', NULL, 'null', '[{"user_id":"lNXQ5xD65nfRxBR73OKrT6LlgEJ"}]', 'null', '2021-07-29 08:13:18', NULL, NULL, '', '', 'High', 'Low', 'de84acd6-a9d3-49a4-98ab-dc62ab57b24a', 0, 1, 1, 'Water Level is ', 'Equal', 'equal_threshold', '90', 'true', 'default', NULL),
	(_binary 0xd9ee4854506b4fe28062bafed8d4a071, 'Water Level ', 'waterlevel', '19846ae0-2262-11eb-b0df-c5da61286deb', 'd7e6fb28-920f-43fb-94d2-b0db223fc4ca', '5bc5e361-11e0-4bde-86f6-782fffd682ab', 'sameer@techxellance.com', '', '', NULL, 'null', '[{"user_id":"Ml8VAMPkgxs71W9p933Xtl9pWxB"},{"user_id":"Ml8VAMPkgxs71W9p933Xtl9pWxB"}]', 'null', '2023-08-08 10:30:38', NULL, NULL, '', '', '', '', '7443d31d-c809-43ab-82df-90b6e2714398', 0, 0, 1, 'Water Level low in N2', 'Equal', 'equal_threshold', 'LOW', 'true', 'default', NULL),
	(_binary 0xdd831c2dd68a43ca966adb182cffe9c3, 'Humidity Alert', 'humid', 'c23771f0-2a95-11ec-b7fe-41e6cda473ac', 'c7e18775-dcb5-43cd-81b1-5a3c5953949f', 'f312df43-1d92-41d7-8e00-f23d572249a7', 'customer@gmail.com', '45', '80', NULL, 'null', '[{"user_id":"hmjoL12wzOwECCPfUF2NOd2AcH5"},{"user_id":"oCJ9ip2Y4JdwEP05xMWNt2lGqlk"}]', 'null', '2023-01-19 14:29:26', NULL, NULL, 'Humidity is', 'Humidity is', 'High', 'Low', 'e12b89a3-e386-46a1-8ae0-a69708ec57ae', 0, 0, 1, '', '', 'low_high_threshold', '', 'true', 'default', NULL),
	(_binary 0xde5a9a366ed54f47a25b4c70728560e8, 'Temperature Alert', 'temp', '67e7b4b0-8640-11ec-b7fe-41e6cda473ac', 'c7e18775-dcb5-43cd-81b1-5a3c5953949f', 'f312df43-1d92-41d7-8e00-f23d572249a7', 'lNXQ5xD65nfRxBR73OKrT6LlgEJ', '25', '35', NULL, 'null', '[{"user_id":"lNXQ5xD65nfRxBR73OKrT6LlgEJ","message":null}]', 'null', '2023-01-25 07:01:26', NULL, NULL, 'Temperature ', 'Temperature ', 'High', 'Low', 'e8793afc-fad5-4bd7-a24f-fa101b0c455e', 0, 1, 1, '', 'Equal', 'low_high_threshold', '', 'true', 'default', NULL),
	(_binary 0xe2a6f01f79a848049a41916f233de1ee, 'PH', 'ph', '19bfdb10-e389-11ea-a912-53759380b98d', 'fba17433-ec23-4365-a9bf-17b756a40213', '27b8a23e-08ac-4760-9afb-b498cb77ee35', '9M6R098VyVUXwGZJ043Js93n2r9', '5.5', '6.4', NULL, 'null', '[{"user_id":"9M6R098VyVUXwGZJ043Js93n2r9"}]', 'null', '2021-10-21 06:25:59', NULL, NULL, 'high ph', 'low ph', 'High', 'Low', '876587c2-d6af-414f-869a-f9ac87c1c060', 0, 1, 1, '', 'Equal', 'low_high_threshold', '', 'true', 'default', NULL),
	(_binary 0xe443205bda454253ac51a95e598c5e7c, 't', 'co2', 'dd61fb00-ce46-11ea-a46f-5b38e316df4d', 'c7e18775-dcb5-43cd-81b1-5a3c5953949f', 'f312df43-1d92-41d7-8e00-f23d572249a7', 'customer@gmail.com', '2', '6', NULL, 'null', '[{"user_id":"wvBmBJQYVWI1z2rNOzo6Hp7X6rK"},{"user_id":"z3DELCSbZlS6M8tyX3P0wTps9hE"},{"user_id":"2PtZvz7pgkj316KkxKm8Zm3sxuh"},{"user_id":"oCJ9ip2Y4JdwEP05xMWNt2lGqlk"}]', 'null', '2023-12-21 06:03:24', NULL, NULL, 'dfgfhf', 'tryty', 'High', 'Low', '53024f77-ca66-4c73-93f1-e3e79e08cee8', 0, 0, 0, '', '', 'low_high_threshold', '', 'true', 'default', NULL),
	(_binary 0xe6a4e29c9d2f4f2e8e915bc12a2f2b5f, 'Humidity Alert', 'humid', 'a092cb20-2b22-11ec-b7fe-41e6cda473ac', '20a2390d-f451-4db2-8160-bdbb7911b855', 'f312df43-1d92-41d7-8e00-f23d572249a7', 'customer@gmail.com', '60', '80', NULL, 'null', '[{"user_id":"oCJ9ip2Y4JdwEP05xMWNt2lGqlk"}]', 'null', '2023-06-09 05:06:10', NULL, NULL, 'Humidity is High', 'Humidity is Low', 'High', 'Low', '5708807b-4f81-4f0d-8f32-04601b8e4ec8', 0, 1, 0, '', '', 'low_high_threshold', '', 'true', 'default', NULL),
	(_binary 0xe6c8340d2bd64c1bb73d04600a8e7bce, 'humid ALERT', 'humid', '1f55d380-32e6-11ef-af0a-7186c36e3fbd', 'xxxxx', 'gGeVgSctLLgzDAHzdMceGkIM1xT', 'gGeVgSctLLgzDAHzdMceGkIM1xT', '0.0', '10.0', NULL, 'null', '[{"user_id":"gGeVgSctLLgzDAHzdMceGkIM1xT","message":null}]', 'null', '2024-11-03 09:53:32', NULL, NULL, NULL, NULL, NULL, NULL, 'xxxxxxx', 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'bbdcfbd7-7377-4a9d-98a5-9a7735ea4093'),
	(_binary 0xe8cb569ea19448869aab6bf7c6e50c4d, 'VPD ALERT', 'VPD', '958f3dc0-0e06-11ef-af0a-7186c36e3fbd', 'xxxxx', 'gGeVgSctLLgzDAHzdMceGkIM1xT', 'gGeVgSctLLgzDAHzdMceGkIM1xT', '-0.1', '0.1', NULL, 'null', '[{"user_id":"gGeVgSctLLgzDAHzdMceGkIM1xT","message":null}]', 'null', '2024-11-20 13:14:41', NULL, NULL, NULL, NULL, NULL, NULL, 'xxxxxxx', 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, '313177de-fe25-498f-a2e4-36f7c02cfbff'),
	(_binary 0xead856c64d6341809c6992e6d1684f63, 'Water Level ', 'waterlevel', '2d8dae80-1ea1-11eb-b0df-c5da61286deb', 'd7e6fb28-920f-43fb-94d2-b0db223fc4ca', '5bc5e361-11e0-4bde-86f6-782fffd682ab', 'sameer@techxellance.com', '', '', NULL, 'null', '[{"user_id":"Ml8VAMPkgxs71W9p933Xtl9pWxB"}]', 'null', '2023-08-08 10:30:38', NULL, NULL, '', '', '', '', '7443d31d-c809-43ab-82df-90b6e2714398', 0, 0, 1, 'Water Level low in T3', 'Equal', 'equal_threshold', 'LOW', 'true', 'default', NULL),
	(_binary 0xeb2ea0eec1d6416fbc15412461d0c58a, 'NFT Tank Low Alert', 'waterlevel1', '024308d0-eb51-11ee-af0a-7186c36e3fbd', 'fe45547a-fe74-455c-a43f-007ee3385285', 'a5e54400-051b-4687-b022-2679b5105b98', 'marketing@silentshoresresort.com', NULL, NULL, NULL, 'null', '[{"user_id":"RSB4P9ec4HJNuxU19IojBG30x9i","message":null}]', 'null', '2024-04-25 06:40:25', NULL, NULL, '', '', 'High', 'Low', '0cc16f37-619c-4a3f-a576-f75ccab6b3a2', 0, 0, 0, 'NFT Tank is', 'Equal', 'equal_threshold', 'LOW', 'true', 'default', NULL),
	(_binary 0xef93a8a0b04e4381b18f4f73408ac2e9, 'pH Alert', 'ph', '9f934450-a34d-11eb-b8d0-c39213c45dcd', '69f3f0b5-c850-4f08-ade8-6d437b597e14', '2938e824-b048-4a82-b7a9-6fc2ced1c986', 'freshlings.ea@futurefarms.in', '1.5', '3.5', NULL, 'null', '[{"user_id":"HZ4yfIuVoXJdD83nB3piubRRIDN"}]', 'null', '2021-10-29 06:37:27', NULL, NULL, 'pH is High in the nutrient tank', 'pH is Low in the nutrient tank', 'High', 'Low', '43705517-1761-41ab-8ec8-7a0206a61066', 0, 0, 0, '', '', 'low_high_threshold', '', 'true', 'default', NULL),
	(_binary 0xf289c1deaf8145b685f60ec7503e5a8a, 'Low water alert', 'waterlevel', 'a291b7d0-1dce-11ec-b7fe-41e6cda473ac', 'c7e18775-dcb5-43cd-81b1-5a3c5953949f', 'f312df43-1d92-41d7-8e00-f23d572249a7', 'lNXQ5xD65nfRxBR73OKrT6LlgEJ', '', '', NULL, 'null', '[{"user_id":"lNXQ5xD65nfRxBR73OKrT6LlgEJ","message":null}]', 'null', '2021-09-25 14:22:00', NULL, NULL, '', '', 'High', 'Low', '53cdd24d-e68d-4544-96c2-0a5df5c37609', 0, 1, 1, 'Water level is low in test system', 'Equal', 'equal_threshold', 'low', 'true', 'default', NULL),
	(_binary 0xf2cba7fbe4924e3f90e84b5c6251aedf, 'V1 Open Alert - Demo 5', 'v1', 'e34fecc0-61cd-11ee-81b0-3bea86339e4f', 'fe45547a-fe74-455c-a43f-007ee3385285', 'a0a45fa6-9749-47c1-b4c8-77cb8c88c0ba', 'ffademo@futurefarms.in', '', '', NULL, 'null', '[{"user_id":"gGeVgSctLLgzDAHzdMceGkIM1xT"}]', 'null', '2024-10-01 10:14:51', NULL, NULL, '', '', '', '', 'c07ea97d-2f32-40f3-8821-a45cad761534', 0, 0, 0, 'Valve 1 is opened', 'Equal', 'equal_threshold', 'ON', 'true', 'default', NULL);

-- Dumping data for table apexdb.alerts_log: ~0 rows (approximately)

-- Dumping data for table apexdb.analytics_business_crop: ~41 rows (approximately)
INSERT IGNORE INTO `analytics_business_crop` (`farm_id`, `crop_id`, `price`, `quantity`, `datetime`, `entity`) VALUES
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '09426025-52f9-41be-a484-2a316095ff0c', 0, 30, '2021-08-04', 'revenue'),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '09426025-52f9-41be-a484-2a316095ff0c', 4200, 30, '2021-08-05', 'revenue'),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '09426025-52f9-41be-a484-2a316095ff0c', 1575, 10, '2021-08-10', 'wastage'),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '09426025-52f9-41be-a484-2a316095ff0c', 2975, 20, '2021-08-17', 'revenue'),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '09426025-52f9-41be-a484-2a316095ff0c', 1920, 16, '2021-08-24', 'wastage'),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '09426025-52f9-41be-a484-2a316095ff0c', 5850, 100, '2021-09-09', 'revenue'),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '09426025-52f9-41be-a484-2a316095ff0c', 2250, 50, '2021-09-15', 'revenue'),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '09426025-52f9-41be-a484-2a316095ff0c', 24000, 20, '2021-09-16', 'wastage'),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '09426025-52f9-41be-a484-2a316095ff0c', 4500, 50, '2021-09-18', 'revenue'),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '09426025-52f9-41be-a484-2a316095ff0c', 4500, 30, '2021-09-18', 'wastage'),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '09426025-52f9-41be-a484-2a316095ff0c', 4050, 30, '2021-09-20', 'revenue'),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '09426025-52f9-41be-a484-2a316095ff0c', 2700, 20, '2021-09-20', 'wastage'),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '09426025-52f9-41be-a484-2a316095ff0c', 570, 4, '2021-09-24', 'revenue'),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '09426025-52f9-41be-a484-2a316095ff0c', 900, 6, '2021-09-24', 'wastage'),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '0bd19d63-a6c0-4042-97b6-bd250ccf8cc0', 1080, 10, '2021-08-10', 'wastage'),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '0bd19d63-a6c0-4042-97b6-bd250ccf8cc0', 6375, 50, '2021-08-17', 'revenue'),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '0bd19d63-a6c0-4042-97b6-bd250ccf8cc0', 6000, 60, '2021-08-29', 'wastage'),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '0c2c64f3-82b5-4081-8708-f0dbea4336c3', 6480, 60, '2021-08-10', 'wastage'),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '0c2c64f3-82b5-4081-8708-f0dbea4336c3', 8925, 60, '2021-08-17', 'revenue'),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '0c2c64f3-82b5-4081-8708-f0dbea4336c3', 11280, 165, '2021-08-23', 'wastage'),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '0c2c64f3-82b5-4081-8708-f0dbea4336c3', 5250, 70, '2021-08-29', 'wastage'),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '0c2c64f3-82b5-4081-8708-f0dbea4336c3', 1500, 10, '2021-09-24', 'revenue'),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '2f9a6390-91ed-402e-8ea9-f883b128ff95', 3718.75, 35, '2021-08-17', 'revenue'),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '2f9a6390-91ed-402e-8ea9-f883b128ff95', 562.5, 10, '2021-08-29', 'wastage'),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '30e0a6ff-eb68-4516-8e91-23d6a133bfc6', 800, 20, '2021-08-05', 'revenue'),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '30e0a6ff-eb68-4516-8e91-23d6a133bfc6', 1687.5, 25, '2021-08-10', 'wastage'),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '30e0a6ff-eb68-4516-8e91-23d6a133bfc6', 1168.75, 25, '2021-08-17', 'revenue'),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '30e0a6ff-eb68-4516-8e91-23d6a133bfc6', 3375, 25, '2021-08-29', 'wastage'),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '3d89f113-999a-4342-944a-755ed2f52dea', 45, 41, '2021-08-04', 'revenue'),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '3d89f113-999a-4342-944a-755ed2f52dea', 0, 10, '2021-08-04', 'wastage'),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '3d89f113-999a-4342-944a-755ed2f52dea', 7864, 81, '2021-08-05', 'revenue'),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '3d89f113-999a-4342-944a-755ed2f52dea', 675, 15, '2021-08-10', 'wastage'),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '3d89f113-999a-4342-944a-755ed2f52dea', 595, 20, '2021-08-17', 'revenue'),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '3d89f113-999a-4342-944a-755ed2f52dea', 800, 20, '2021-08-24', 'wastage'),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '3d89f113-999a-4342-944a-755ed2f52dea', 3200, 90, '2021-08-30', 'wastage'),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '3d89f113-999a-4342-944a-755ed2f52dea', 6375, 50, '2021-09-08', 'wastage'),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '3d89f113-999a-4342-944a-755ed2f52dea', 4500, 100, '2021-09-12', 'wastage'),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '3d89f113-999a-4342-944a-755ed2f52dea', 10500, 130, '2021-09-14', 'revenue'),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '99d00b10-67ba-4d2a-a805-08977f867aa5', 1785, 60, '2021-08-17', 'revenue'),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '99d00b10-67ba-4d2a-a805-08977f867aa5', 3200, 70, '2021-08-30', 'wastage'),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '99d00b10-67ba-4d2a-a805-08977f867aa5', 2500, 40, '2021-09-16', 'revenue'),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '99d00b10-67ba-4d2a-a805-08977f867aa5', 1200, 12, '2021-09-18', 'wastage');

-- Dumping data for table apexdb.analytics_business_crop_monthly: ~18 rows (approximately)
INSERT IGNORE INTO `analytics_business_crop_monthly` (`farm_id`, `crop_id`, `year`, `month`, `entity`, `start_date`, `end_date`, `quantity`, `price`) VALUES
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '09426025-52f9-41be-a484-2a316095ff0c', 2021, 8, 'revenue', NULL, NULL, 80, 7175),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '09426025-52f9-41be-a484-2a316095ff0c', 2021, 8, 'wastage', NULL, NULL, 26, 3495),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '09426025-52f9-41be-a484-2a316095ff0c', 2021, 9, 'revenue', NULL, NULL, 234, 17220),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '09426025-52f9-41be-a484-2a316095ff0c', 2021, 9, 'wastage', NULL, NULL, 76, 32100),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '0bd19d63-a6c0-4042-97b6-bd250ccf8cc0', 2021, 8, 'revenue', NULL, NULL, 50, 6375),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '0bd19d63-a6c0-4042-97b6-bd250ccf8cc0', 2021, 8, 'wastage', NULL, NULL, 70, 7080),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '0c2c64f3-82b5-4081-8708-f0dbea4336c3', 2021, 8, 'revenue', NULL, NULL, 60, 8925),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '0c2c64f3-82b5-4081-8708-f0dbea4336c3', 2021, 8, 'wastage', NULL, NULL, 295, 23010),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '0c2c64f3-82b5-4081-8708-f0dbea4336c3', 2021, 9, 'revenue', NULL, NULL, 10, 1500),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '2f9a6390-91ed-402e-8ea9-f883b128ff95', 2021, 8, 'revenue', NULL, NULL, 35, 3718.75),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '2f9a6390-91ed-402e-8ea9-f883b128ff95', 2021, 8, 'wastage', NULL, NULL, 10, 562.5),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '30e0a6ff-eb68-4516-8e91-23d6a133bfc6', 2021, 8, 'revenue', NULL, NULL, 45, 1968.75),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '30e0a6ff-eb68-4516-8e91-23d6a133bfc6', 2021, 8, 'wastage', NULL, NULL, 50, 5062.5),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '3d89f113-999a-4342-944a-755ed2f52dea', 2021, 8, 'revenue', NULL, NULL, 142, 8504),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '3d89f113-999a-4342-944a-755ed2f52dea', 2021, 8, 'wastage', NULL, NULL, 135, 4675),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '3d89f113-999a-4342-944a-755ed2f52dea', 2021, 9, 'revenue', NULL, NULL, 130, 10500),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '3d89f113-999a-4342-944a-755ed2f52dea', 2021, 9, 'wastage', NULL, NULL, 150, 10875),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '99d00b10-67ba-4d2a-a805-08977f867aa5', 2021, 8, 'revenue', NULL, NULL, 60, 1785),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '99d00b10-67ba-4d2a-a805-08977f867aa5', 2021, 8, 'wastage', NULL, NULL, 70, 3200),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '99d00b10-67ba-4d2a-a805-08977f867aa5', 2021, 9, 'revenue', NULL, NULL, 40, 2500),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '99d00b10-67ba-4d2a-a805-08977f867aa5', 2021, 9, 'wastage', NULL, NULL, 12, 1200);

-- Dumping data for table apexdb.analytics_business_crop_weekly: ~34 rows (approximately)
INSERT IGNORE INTO `analytics_business_crop_weekly` (`farm_id`, `crop_id`, `year`, `month`, `week`, `entity`, `start_date`, `end_date`, `quantity`, `price`) VALUES
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '09426025-52f9-41be-a484-2a316095ff0c', 2021, 8, 1, 'revenue', NULL, NULL, 60, 4200),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '09426025-52f9-41be-a484-2a316095ff0c', 2021, 8, 2, 'wastage', NULL, NULL, 10, 1575),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '09426025-52f9-41be-a484-2a316095ff0c', 2021, 8, 3, 'revenue', NULL, NULL, 20, 2975),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '09426025-52f9-41be-a484-2a316095ff0c', 2021, 8, 4, 'wastage', NULL, NULL, 16, 1920),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '09426025-52f9-41be-a484-2a316095ff0c', 2021, 9, 2, 'revenue', NULL, NULL, 100, 5850),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '09426025-52f9-41be-a484-2a316095ff0c', 2021, 9, 3, 'revenue', NULL, NULL, 130, 10800),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '09426025-52f9-41be-a484-2a316095ff0c', 2021, 9, 3, 'wastage', NULL, NULL, 70, 31200),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '09426025-52f9-41be-a484-2a316095ff0c', 2021, 9, 4, 'revenue', NULL, NULL, 4, 570),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '09426025-52f9-41be-a484-2a316095ff0c', 2021, 9, 4, 'wastage', NULL, NULL, 6, 900),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '0bd19d63-a6c0-4042-97b6-bd250ccf8cc0', 2021, 8, 2, 'wastage', NULL, NULL, 10, 1080),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '0bd19d63-a6c0-4042-97b6-bd250ccf8cc0', 2021, 8, 3, 'revenue', NULL, NULL, 50, 6375),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '0bd19d63-a6c0-4042-97b6-bd250ccf8cc0', 2021, 8, 5, 'wastage', NULL, NULL, 60, 6000),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '0c2c64f3-82b5-4081-8708-f0dbea4336c3', 2021, 8, 2, 'wastage', NULL, NULL, 60, 6480),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '0c2c64f3-82b5-4081-8708-f0dbea4336c3', 2021, 8, 3, 'revenue', NULL, NULL, 60, 8925),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '0c2c64f3-82b5-4081-8708-f0dbea4336c3', 2021, 8, 4, 'wastage', NULL, NULL, 165, 11280),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '0c2c64f3-82b5-4081-8708-f0dbea4336c3', 2021, 8, 5, 'wastage', NULL, NULL, 70, 5250),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '0c2c64f3-82b5-4081-8708-f0dbea4336c3', 2021, 9, 4, 'revenue', NULL, NULL, 10, 1500),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '2f9a6390-91ed-402e-8ea9-f883b128ff95', 2021, 8, 3, 'revenue', NULL, NULL, 35, 3718.75),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '2f9a6390-91ed-402e-8ea9-f883b128ff95', 2021, 8, 5, 'wastage', NULL, NULL, 10, 562.5),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '30e0a6ff-eb68-4516-8e91-23d6a133bfc6', 2021, 8, 1, 'revenue', NULL, NULL, 20, 800),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '30e0a6ff-eb68-4516-8e91-23d6a133bfc6', 2021, 8, 2, 'wastage', NULL, NULL, 25, 1687.5),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '30e0a6ff-eb68-4516-8e91-23d6a133bfc6', 2021, 8, 3, 'revenue', NULL, NULL, 25, 1168.75),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '30e0a6ff-eb68-4516-8e91-23d6a133bfc6', 2021, 8, 5, 'wastage', NULL, NULL, 25, 3375),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '3d89f113-999a-4342-944a-755ed2f52dea', 2021, 8, 1, 'revenue', NULL, NULL, 122, 7909),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '3d89f113-999a-4342-944a-755ed2f52dea', 2021, 8, 1, 'wastage', NULL, NULL, 10, 0),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '3d89f113-999a-4342-944a-755ed2f52dea', 2021, 8, 2, 'wastage', NULL, NULL, 15, 675),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '3d89f113-999a-4342-944a-755ed2f52dea', 2021, 8, 3, 'revenue', NULL, NULL, 20, 595),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '3d89f113-999a-4342-944a-755ed2f52dea', 2021, 8, 4, 'wastage', NULL, NULL, 20, 800),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '3d89f113-999a-4342-944a-755ed2f52dea', 2021, 8, 5, 'wastage', NULL, NULL, 90, 3200),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '3d89f113-999a-4342-944a-755ed2f52dea', 2021, 9, 2, 'revenue', NULL, NULL, 130, 10500),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '3d89f113-999a-4342-944a-755ed2f52dea', 2021, 9, 2, 'wastage', NULL, NULL, 150, 10875),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '99d00b10-67ba-4d2a-a805-08977f867aa5', 2021, 8, 3, 'revenue', NULL, NULL, 60, 1785),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '99d00b10-67ba-4d2a-a805-08977f867aa5', 2021, 8, 5, 'wastage', NULL, NULL, 70, 3200),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '99d00b10-67ba-4d2a-a805-08977f867aa5', 2021, 9, 3, 'revenue', NULL, NULL, 40, 2500),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '99d00b10-67ba-4d2a-a805-08977f867aa5', 2021, 9, 3, 'wastage', NULL, NULL, 12, 1200);

-- Dumping data for table apexdb.analytics_business_farm: ~21 rows (approximately)
INSERT IGNORE INTO `analytics_business_farm` (`farm_id`, `entity`, `datetime`, `quantity`, `price`) VALUES
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', 'wastage', '2021-08-10', '120', '11497.5'),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', 'revenue', '2021-08-17', '270', '25542.5'),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', 'wastage', '2021-08-23', '165', '11280'),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', 'wastage', '2021-08-24', '36', '2720'),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', 'wastage', '2021-08-29', '165', '15187.5'),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', 'wastage', '2021-08-30', '160', '6400'),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', 'wastage', '2021-09-08', '50', '6375'),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', 'revenue', '2021-09-09', '100', '5850'),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', 'wastage', '2021-09-12', '100', '4500'),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', 'revenue', '2021-09-14', '130', '10500'),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', 'revenue', '2021-09-15', '50', '2250'),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', 'revenue', '2021-09-16', '40', '2500'),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', 'wastage', '2021-09-16', '20', '24000'),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', 'revenue', '2021-09-18', '50', '4500'),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', 'wastage', '2021-09-18', '42', '5700'),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', 'revenue', '2021-09-20', '30', '4050'),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', 'wastage', '2021-09-20', '20', '2700'),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', 'revenue', '2021-09-24', '14', '2070'),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', 'wastage', '2021-09-24', '6', '900'),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', 'revenue', '2022-10-18', '131', '12864'),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', 'wastage', '2022-10-18', '10', '20'),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', 'revenue', '2022-10-19', '71', '45');

-- Dumping data for table apexdb.analytics_business_farm_monthly: ~4 rows (approximately)
INSERT IGNORE INTO `analytics_business_farm_monthly` (`farm_id`, `year`, `month`, `entity`, `start_date`, `end_date`, `quantity`, `price`) VALUES
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', 2022, 8, 'revenue', NULL, NULL, 472, 38451.5),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', 2022, 8, 'wastage', NULL, NULL, 656, 47085),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', 2022, 9, 'revenue', NULL, NULL, 414, 31720),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', 2022, 9, 'wastage', NULL, NULL, 238, 44175);

-- Dumping data for table apexdb.analytics_business_farm_weekly: ~11 rows (approximately)
INSERT IGNORE INTO `analytics_business_farm_weekly` (`farm_id`, `year`, `month`, `week`, `entity`, `start_date`, `end_date`, `quantity`, `price`) VALUES
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', 2021, 8, 1, 'revenue', NULL, NULL, 202, 12909),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', 2021, 8, 1, 'wastage', NULL, NULL, 10, 0),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', 2021, 8, 2, 'wastage', NULL, NULL, 120, 11497.5),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', 2021, 8, 3, 'revenue', NULL, NULL, 270, 25542.5),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', 2021, 8, 4, 'wastage', NULL, NULL, 201, 14000),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', 2021, 8, 5, 'wastage', NULL, NULL, 325, 21587.5),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', 2021, 9, 2, 'revenue', NULL, NULL, 230, 16350),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', 2021, 9, 2, 'wastage', NULL, NULL, 150, 10875),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', 2021, 9, 3, 'revenue', NULL, NULL, 170, 13300),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', 2021, 9, 3, 'wastage', NULL, NULL, 82, 32400),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', 2021, 9, 4, 'revenue', NULL, NULL, 14, 2070),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', 2021, 9, 4, 'wastage', NULL, NULL, 6, 900);

-- Dumping data for table apexdb.analytics_expense_category: ~27 rows (approximately)
INSERT IGNORE INTO `analytics_expense_category` (`farm_id`, `category_id`, `datetime`, `price`, `quantity`) VALUES
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '346617f4-5ebc-4831-aa2b-e6ccecd462d5', '2021-08-04', 15, 10),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '346617f4-5ebc-4831-aa2b-e6ccecd462d5', '2021-09-03', 1000, 10),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '454d3b38-cd84-4cfb-974c-4d67e279ad3f', '2021-09-03', 250, 5),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '454d3b38-cd84-4cfb-974c-4d67e279ad3f', '2021-09-20', 400, 1),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '5e39f595-cfcc-4040-b53a-b6489c056d92', '2021-09-22', 60000, 2),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '8130cbf0-71bc-4cd4-b92d-80af8292391f', '2021-08-03', 30000, 43),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '8130cbf0-71bc-4cd4-b92d-80af8292391f', '2021-08-04', 20, 110),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '8130cbf0-71bc-4cd4-b92d-80af8292391f', '2021-08-06', 2500, 4),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '8130cbf0-71bc-4cd4-b92d-80af8292391f', '2021-08-07', 2350, 2),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '8130cbf0-71bc-4cd4-b92d-80af8292391f', '2021-08-10', 1000, 2),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '8130cbf0-71bc-4cd4-b92d-80af8292391f', '2021-08-12', 3000, 4),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '8130cbf0-71bc-4cd4-b92d-80af8292391f', '2021-09-04', 1500, 2),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '8130cbf0-71bc-4cd4-b92d-80af8292391f', '2021-09-19', 1200, 1),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '8130cbf0-71bc-4cd4-b92d-80af8292391f', '2021-09-22', 2500, 2),
	('53cdd24d-e68d-4544-96c2-0a5df5c37609', '454d3b38-cd84-4cfb-974c-4d67e279ad3f', '2021-09-04', 100, 40),
	('7a9d6b34-a1c0-4348-8503-426b2aad34d4', '454d3b38-cd84-4cfb-974c-4d67e279ad3f', '2021-09-02', 500, 2),
	('7a9d6b34-a1c0-4348-8503-426b2aad34d4', '8130cbf0-71bc-4cd4-b92d-80af8292391f', '2021-09-01', 1500, 5),
	('7a9d6b34-a1c0-4348-8503-426b2aad34d4', '8130cbf0-71bc-4cd4-b92d-80af8292391f', '2021-09-02', 1200, 21),
	('94b33301-7a23-4757-8ecc-84d60edb6fc0', '8130cbf0-71bc-4cd4-b92d-80af8292391f', '2021-08-04', 500, 8),
	('94b33301-7a23-4757-8ecc-84d60edb6fc0', '8130cbf0-71bc-4cd4-b92d-80af8292391f', '2021-08-05', 500, 8),
	('94b33301-7a23-4757-8ecc-84d60edb6fc0', '8130cbf0-71bc-4cd4-b92d-80af8292391f', '2021-08-18', 200, 36),
	('94b33301-7a23-4757-8ecc-84d60edb6fc0', '8130cbf0-71bc-4cd4-b92d-80af8292391f', '2021-09-20', 520, 70),
	('f7e0a23f-f68c-4f39-88ae-5f496b1d517b', '2108311b-b65d-4eba-96ca-2966002e92a4', '2021-09-13', 796, 2),
	('f7e0a23f-f68c-4f39-88ae-5f496b1d517b', '454d3b38-cd84-4cfb-974c-4d67e279ad3f', '2021-09-06', 0, 1),
	('f7e0a23f-f68c-4f39-88ae-5f496b1d517b', '454d3b38-cd84-4cfb-974c-4d67e279ad3f', '2021-09-07', 1254, 4),
	('f7e0a23f-f68c-4f39-88ae-5f496b1d517b', '8130cbf0-71bc-4cd4-b92d-80af8292391f', '2021-08-31', 0, 8),
	('f7e0a23f-f68c-4f39-88ae-5f496b1d517b', '8130cbf0-71bc-4cd4-b92d-80af8292391f', '2021-09-03', 22125, 2),
	('f7e0a23f-f68c-4f39-88ae-5f496b1d517b', '8130cbf0-71bc-4cd4-b92d-80af8292391f', '2021-09-09', 640, 5);

-- Dumping data for table apexdb.analytics_expense_category_monthly: ~14 rows (approximately)
INSERT IGNORE INTO `analytics_expense_category_monthly` (`farm_id`, `category_id`, `year`, `month`, `quantity`, `price`) VALUES
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '346617f4-5ebc-4831-aa2b-e6ccecd462d5', 2021, 8, 10, 15),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '346617f4-5ebc-4831-aa2b-e6ccecd462d5', 2021, 9, 10, 1000),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '454d3b38-cd84-4cfb-974c-4d67e279ad3f', 2021, 9, 6, 650),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '5e39f595-cfcc-4040-b53a-b6489c056d92', 2021, 9, 2, 60000),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '8130cbf0-71bc-4cd4-b92d-80af8292391f', 2021, 8, 165, 38870),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '8130cbf0-71bc-4cd4-b92d-80af8292391f', 2021, 9, 5, 5200),
	('53cdd24d-e68d-4544-96c2-0a5df5c37609', '454d3b38-cd84-4cfb-974c-4d67e279ad3f', 2021, 9, 40, 100),
	('7a9d6b34-a1c0-4348-8503-426b2aad34d4', '454d3b38-cd84-4cfb-974c-4d67e279ad3f', 2021, 9, 2, 500),
	('7a9d6b34-a1c0-4348-8503-426b2aad34d4', '8130cbf0-71bc-4cd4-b92d-80af8292391f', 2021, 9, 26, 2700),
	('94b33301-7a23-4757-8ecc-84d60edb6fc0', '8130cbf0-71bc-4cd4-b92d-80af8292391f', 2021, 8, 52, 1200),
	('94b33301-7a23-4757-8ecc-84d60edb6fc0', '8130cbf0-71bc-4cd4-b92d-80af8292391f', 2021, 9, 140, 1040),
	('f7e0a23f-f68c-4f39-88ae-5f496b1d517b', '2108311b-b65d-4eba-96ca-2966002e92a4', 2021, 9, 2, 796),
	('f7e0a23f-f68c-4f39-88ae-5f496b1d517b', '454d3b38-cd84-4cfb-974c-4d67e279ad3f', 2021, 9, 5, 1254),
	('f7e0a23f-f68c-4f39-88ae-5f496b1d517b', '8130cbf0-71bc-4cd4-b92d-80af8292391f', 2021, 8, 8, 0),
	('f7e0a23f-f68c-4f39-88ae-5f496b1d517b', '8130cbf0-71bc-4cd4-b92d-80af8292391f', 2021, 9, 7, 22765);

-- Dumping data for table apexdb.analytics_expense_category_weekly: ~21 rows (approximately)
INSERT IGNORE INTO `analytics_expense_category_weekly` (`farm_id`, `category_id`, `year`, `month`, `week`, `quantity`, `price`) VALUES
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '346617f4-5ebc-4831-aa2b-e6ccecd462d5', 2021, 8, 1, 10, 15),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '346617f4-5ebc-4831-aa2b-e6ccecd462d5', 2021, 9, 1, 10, 1000),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '454d3b38-cd84-4cfb-974c-4d67e279ad3f', 2021, 9, 1, 5, 250),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '454d3b38-cd84-4cfb-974c-4d67e279ad3f', 2021, 9, 3, 1, 400),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '5e39f595-cfcc-4040-b53a-b6489c056d92', 2021, 9, 4, 2, 60000),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '8130cbf0-71bc-4cd4-b92d-80af8292391f', 2021, 8, 1, 159, 34870),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '8130cbf0-71bc-4cd4-b92d-80af8292391f', 2021, 8, 2, 6, 4000),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '8130cbf0-71bc-4cd4-b92d-80af8292391f', 2021, 9, 1, 2, 1500),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '8130cbf0-71bc-4cd4-b92d-80af8292391f', 2021, 9, 3, 1, 1200),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '8130cbf0-71bc-4cd4-b92d-80af8292391f', 2021, 9, 4, 2, 2500),
	('53cdd24d-e68d-4544-96c2-0a5df5c37609', '454d3b38-cd84-4cfb-974c-4d67e279ad3f', 2021, 9, 1, 40, 100),
	('7a9d6b34-a1c0-4348-8503-426b2aad34d4', '454d3b38-cd84-4cfb-974c-4d67e279ad3f', 2021, 9, 1, 2, 500),
	('7a9d6b34-a1c0-4348-8503-426b2aad34d4', '8130cbf0-71bc-4cd4-b92d-80af8292391f', 2021, 9, 1, 26, 2700),
	('94b33301-7a23-4757-8ecc-84d60edb6fc0', '8130cbf0-71bc-4cd4-b92d-80af8292391f', 2021, 8, 1, 16, 1000),
	('94b33301-7a23-4757-8ecc-84d60edb6fc0', '8130cbf0-71bc-4cd4-b92d-80af8292391f', 2021, 8, 3, 36, 200),
	('94b33301-7a23-4757-8ecc-84d60edb6fc0', '8130cbf0-71bc-4cd4-b92d-80af8292391f', 2021, 9, 3, 140, 1040),
	('f7e0a23f-f68c-4f39-88ae-5f496b1d517b', '2108311b-b65d-4eba-96ca-2966002e92a4', 2021, 9, 2, 2, 796),
	('f7e0a23f-f68c-4f39-88ae-5f496b1d517b', '454d3b38-cd84-4cfb-974c-4d67e279ad3f', 2021, 9, 1, 5, 1254),
	('f7e0a23f-f68c-4f39-88ae-5f496b1d517b', '8130cbf0-71bc-4cd4-b92d-80af8292391f', 2021, 8, 5, 8, 0),
	('f7e0a23f-f68c-4f39-88ae-5f496b1d517b', '8130cbf0-71bc-4cd4-b92d-80af8292391f', 2021, 9, 1, 2, 22125),
	('f7e0a23f-f68c-4f39-88ae-5f496b1d517b', '8130cbf0-71bc-4cd4-b92d-80af8292391f', 2021, 9, 2, 5, 640);

-- Dumping data for table apexdb.analytics_expense_farm: ~23 rows (approximately)
INSERT IGNORE INTO `analytics_expense_farm` (`farm_id`, `datetime`, `price`, `quantity`) VALUES
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '2021-08-03', 30000, 43),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '2021-08-04', 35, 120),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '2021-08-06', 2500, 4),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '2021-08-07', 2350, 2),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '2021-08-10', 1000, 2),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '2021-08-12', 3000, 4),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '2021-09-03', 1250, 15),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '2021-09-04', 1500, 2),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '2021-09-19', 1200, 1),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '2021-09-22', 60000, 2),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '2021-09-23', 2500, 2),
	('53cdd24d-e68d-4544-96c2-0a5df5c37609', '2021-09-04', 100, 40),
	('7a9d6b34-a1c0-4348-8503-426b2aad34d4', '2021-09-01', 1500, 5),
	('7a9d6b34-a1c0-4348-8503-426b2aad34d4', '2021-09-02', 1700, 23),
	('94b33301-7a23-4757-8ecc-84d60edb6fc0', '2021-08-04', 500, 8),
	('94b33301-7a23-4757-8ecc-84d60edb6fc0', '2021-08-05', 500, 8),
	('94b33301-7a23-4757-8ecc-84d60edb6fc0', '2021-08-18', 200, 36),
	('94b33301-7a23-4757-8ecc-84d60edb6fc0', '2021-09-20', 520, 70),
	('f7e0a23f-f68c-4f39-88ae-5f496b1d517b', '2021-08-31', 0, 8),
	('f7e0a23f-f68c-4f39-88ae-5f496b1d517b', '2021-09-03', 22125, 2),
	('f7e0a23f-f68c-4f39-88ae-5f496b1d517b', '2021-09-06', 0, 1),
	('f7e0a23f-f68c-4f39-88ae-5f496b1d517b', '2021-09-07', 1254, 4),
	('f7e0a23f-f68c-4f39-88ae-5f496b1d517b', '2021-09-09', 640, 5),
	('f7e0a23f-f68c-4f39-88ae-5f496b1d517b', '2021-09-13', 796, 2);

-- Dumping data for table apexdb.analytics_expense_farm_monthly: ~7 rows (approximately)
INSERT IGNORE INTO `analytics_expense_farm_monthly` (`farm_id`, `year`, `month`, `quantity`, `price`) VALUES
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', 2021, 8, 175, 38885),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', 2021, 9, 22, 66450),
	('53cdd24d-e68d-4544-96c2-0a5df5c37609', 2021, 9, 40, 100),
	('7a9d6b34-a1c0-4348-8503-426b2aad34d4', 2021, 9, 28, 3200),
	('94b33301-7a23-4757-8ecc-84d60edb6fc0', 2021, 8, 52, 1200),
	('94b33301-7a23-4757-8ecc-84d60edb6fc0', 2021, 9, 70, 520),
	('f7e0a23f-f68c-4f39-88ae-5f496b1d517b', 2021, 8, 8, 0),
	('f7e0a23f-f68c-4f39-88ae-5f496b1d517b', 2021, 9, 14, 24815);

-- Dumping data for table apexdb.analytics_expense_farm_weekly: ~12 rows (approximately)
INSERT IGNORE INTO `analytics_expense_farm_weekly` (`farm_id`, `year`, `month`, `week`, `quantity`, `price`) VALUES
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', 2021, 8, 1, 169, 34885),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', 2021, 8, 2, 6, 4000),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', 2021, 9, 1, 17, 2750),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', 2021, 9, 3, 1, 1200),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', 2021, 9, 4, 4, 62500),
	('53cdd24d-e68d-4544-96c2-0a5df5c37609', 2021, 9, 1, 40, 100),
	('7a9d6b34-a1c0-4348-8503-426b2aad34d4', 2021, 9, 1, 28, 3200),
	('94b33301-7a23-4757-8ecc-84d60edb6fc0', 2021, 8, 1, 16, 1000),
	('94b33301-7a23-4757-8ecc-84d60edb6fc0', 2021, 8, 3, 36, 200),
	('94b33301-7a23-4757-8ecc-84d60edb6fc0', 2021, 9, 3, 70, 520),
	('f7e0a23f-f68c-4f39-88ae-5f496b1d517b', 2021, 8, 5, 8, 0),
	('f7e0a23f-f68c-4f39-88ae-5f496b1d517b', 2021, 9, 1, 7, 23379),
	('f7e0a23f-f68c-4f39-88ae-5f496b1d517b', 2021, 9, 2, 7, 1436);

-- Dumping data for table apexdb.analytics_yield_crop: ~18 rows (approximately)
INSERT IGNORE INTO `analytics_yield_crop` (`farm_id`, `crop_id`, `datetime`, `quantity`) VALUES
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '09426025-52f9-41be-a484-2a316095ff0c', '2021-08-05', 68),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '09426025-52f9-41be-a484-2a316095ff0c', '2021-08-06', 12),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '09426025-52f9-41be-a484-2a316095ff0c', '2021-08-16', 100),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '09426025-52f9-41be-a484-2a316095ff0c', '2021-08-24', 50),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '09426025-52f9-41be-a484-2a316095ff0c', '2021-09-04', 60),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '0bd19d63-a6c0-4042-97b6-bd250ccf8cc0', '2021-08-10', 50),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '0bd19d63-a6c0-4042-97b6-bd250ccf8cc0', '2021-08-11', 70),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '0c2c64f3-82b5-4081-8708-f0dbea4336c3', '2021-08-10', 120),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '0c2c64f3-82b5-4081-8708-f0dbea4336c3', '2021-08-16', 235),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '0c2c64f3-82b5-4081-8708-f0dbea4336c3', '2021-09-24', 20),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '2f9a6390-91ed-402e-8ea9-f883b128ff95', '2021-08-10', 45),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '30e0a6ff-eb68-4516-8e91-23d6a133bfc6', '2021-08-05', 50),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '30e0a6ff-eb68-4516-8e91-23d6a133bfc6', '2021-08-06', 35),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '30e0a6ff-eb68-4516-8e91-23d6a133bfc6', '2021-08-07', 10),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '3d89f113-999a-4342-944a-755ed2f52dea', '2021-08-10', 75),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '3d89f113-999a-4342-944a-755ed2f52dea', '2021-08-11', 50),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '3d89f113-999a-4342-944a-755ed2f52dea', '2021-08-12', 30),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '3d89f113-999a-4342-944a-755ed2f52dea', '2021-08-16', 230),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '99d00b10-67ba-4d2a-a805-08977f867aa5', '2021-08-13', 60),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '99d00b10-67ba-4d2a-a805-08977f867aa5', '2021-08-16', 110),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '99d00b10-67ba-4d2a-a805-08977f867aa5', '2021-09-16', 12);

-- Dumping data for table apexdb.analytics_yield_crop_monthly: ~8 rows (approximately)
INSERT IGNORE INTO `analytics_yield_crop_monthly` (`farm_id`, `crop_id`, `year`, `month`, `quantity`) VALUES
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '09426025-52f9-41be-a484-2a316095ff0c', 2021, 8, 230),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '09426025-52f9-41be-a484-2a316095ff0c', 2021, 9, 60),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '0bd19d63-a6c0-4042-97b6-bd250ccf8cc0', 2021, 8, 120),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '0c2c64f3-82b5-4081-8708-f0dbea4336c3', 2021, 8, 355),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '0c2c64f3-82b5-4081-8708-f0dbea4336c3', 2021, 9, 20),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '2f9a6390-91ed-402e-8ea9-f883b128ff95', 2021, 8, 45),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '30e0a6ff-eb68-4516-8e91-23d6a133bfc6', 2021, 8, 95),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '3d89f113-999a-4342-944a-755ed2f52dea', 2021, 8, 385),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '99d00b10-67ba-4d2a-a805-08977f867aa5', 2021, 8, 170),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '99d00b10-67ba-4d2a-a805-08977f867aa5', 2021, 9, 12);

-- Dumping data for table apexdb.analytics_yield_crop_weekly: ~15 rows (approximately)
INSERT IGNORE INTO `analytics_yield_crop_weekly` (`farm_id`, `crop_id`, `year`, `month`, `week`, `quantity`) VALUES
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '09426025-52f9-41be-a484-2a316095ff0c', 2021, 8, 1, 80),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '09426025-52f9-41be-a484-2a316095ff0c', 2021, 8, 3, 100),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '09426025-52f9-41be-a484-2a316095ff0c', 2021, 8, 4, 50),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '09426025-52f9-41be-a484-2a316095ff0c', 2021, 9, 1, 60),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '0bd19d63-a6c0-4042-97b6-bd250ccf8cc0', 2021, 8, 2, 120),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '0c2c64f3-82b5-4081-8708-f0dbea4336c3', 2021, 8, 2, 120),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '0c2c64f3-82b5-4081-8708-f0dbea4336c3', 2021, 8, 3, 235),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '0c2c64f3-82b5-4081-8708-f0dbea4336c3', 2021, 9, 4, 20),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '2f9a6390-91ed-402e-8ea9-f883b128ff95', 2021, 8, 2, 45),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '30e0a6ff-eb68-4516-8e91-23d6a133bfc6', 2021, 8, 1, 95),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '3d89f113-999a-4342-944a-755ed2f52dea', 2021, 8, 2, 155),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '3d89f113-999a-4342-944a-755ed2f52dea', 2021, 8, 3, 230),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '99d00b10-67ba-4d2a-a805-08977f867aa5', 2021, 8, 2, 60),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '99d00b10-67ba-4d2a-a805-08977f867aa5', 2021, 8, 3, 110),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '99d00b10-67ba-4d2a-a805-08977f867aa5', 2021, 9, 3, 12);

-- Dumping data for table apexdb.analytics_yield_farm: ~12 rows (approximately)
INSERT IGNORE INTO `analytics_yield_farm` (`farm_id`, `datetime`, `quantity`) VALUES
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '2022-02-05', 118),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '2022-02-06', 47),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '2022-02-07', 10),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '2022-02-10', 290),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '2022-02-11', 120),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '2022-02-12', 30),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '2022-02-13', 60),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '2022-03-04', 60),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '2022-03-16', 675),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '2022-03-17', 12),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '2022-03-22', 20),
	('53024f77-ca66-4c73-93f1-e3e79e08cee8', '2022-03-24', 50);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
