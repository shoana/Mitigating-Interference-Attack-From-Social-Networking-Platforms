CREATE TABLE IF NOT EXISTS your_event_responses (
    `event_responses_events_joined_name` VARCHAR(19) CHARACTER SET utf8,
    `event_responses_events_joined_start_timestamp` INT,
    `event_responses_events_joined_end_timestamp` INT,
    `event_responses_events_interested_name` VARCHAR(36) CHARACTER SET utf8,
    `event_responses_events_interested_start_timestamp` INT,
    `event_responses_events_interested_end_timestamp` INT
);
INSERT INTO your_event_responses VALUES
    ('Rosanne becomes 21!',1562428800,0,'Ottawa South Asian Formal ''20',1584835200,1584851400),
    ('Rosanne becomes 21!',1562428800,0,'Winter Meet N'' Greet',1579712400,1579723200),
    ('Rosanne becomes 21!',1562428800,0,'Ottawa Night Market - Chinatown 2019',1564178400,1564358400),
    ('Rosanne becomes 21!',1562428800,0,'Chill & Grill Party',1538159400,1538173800);
