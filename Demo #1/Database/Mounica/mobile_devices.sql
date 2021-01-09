CREATE TABLE IF NOT EXISTS mobile_devices (
    `devices_type` VARCHAR(9) CHARACTER SET utf8,
    `devices_os` VARCHAR(14) CHARACTER SET utf8,
    `devices_update_time` INT,
    `devices_advertiser_id` VARCHAR(36) CHARACTER SET utf8,
    `devices_redact_tokens` VARCHAR(24) CHARACTER SET utf8,
    `devices_push_tokens_disabled` VARCHAR(5) CHARACTER SET utf8,
    `devices_push_tokens_client_update_time` INT,
    `devices_push_tokens_creation_time` INT,
    `devices_push_tokens_app_version` VARCHAR(14) CHARACTER SET utf8,
    `devices_push_tokens_locale` VARCHAR(5) CHARACTER SET utf8,
    `devices_push_tokens_os_version` NUMERIC(3, 1),
    `devices_push_tokens_token` VARCHAR(24) CHARACTER SET utf8,
    `devices_push_tokens_device_id` VARCHAR(36) CHARACTER SET utf8,
    `devices_family_device_id` INT,
    `devices_device_locale` VARCHAR(5) CHARACTER SET utf8
);
INSERT INTO mobile_devices VALUES
    ('iPhone8,1','iPhone OS 11.0',1605191416,'01842945-7b37-4334-8dfe-05a66f28bc5b','e63b********************',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
    ('iPhone8,1','iPhone OS 11.0',1605191416,'01842945-7b37-4334-8dfe-05a66f28bc5b','3a56********************','False',1605285866,1603539363,'290.0.0.33.113','en_US',11.0,'e63b********************','A21AE3B9-D337-4637-9A07-02B23230CC6B',NULL,NULL),
    ('iPhone8,1','iPhone OS 11.0',1605191416,'01842945-7b37-4334-8dfe-05a66f28bc5b','3a56********************','False',1605285863,1585541339,'290.0.0.33.113','en_US',11.0,'3a56********************','A21AE3B9-D337-4637-9A07-02B23230CC6B',NULL,'en_CA');
