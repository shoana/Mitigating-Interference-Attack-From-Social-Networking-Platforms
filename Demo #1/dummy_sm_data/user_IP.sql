CREATE TABLE IF NOT EXISTS user_IP (
  user_ID INT,
  IP_address VARCHAR(40),
  account_activity_lat_long VARCHAR(40) CHARACTER SET utf8,
  account_activity_city VARCHAR(40) CHARACTER SET utf8
);

INSERT INTO user_IP VALUES
  (	1,	'2620:0022:4000:1201:1ff5:57cc:f2de:8638',	'45.421532, -75.697189', 'Ottawa'),
  (	2,	'2620:0022:4000:1201:1ff5:57cc:f2de:8638',	'45.421532, -75.697190', 'Ottawa'),
  (	3,	'2607:fea8:5a80:0b9e:1d5b:f274:949e:4ac2',	'43.653225, -79.383186', 'Toronto'),
  (	4,	'2620:0022:4000:1201:1ffc:4241:e6a0:0587',	'45.421532, -75.697189', 'Ottawa'),
  (	5,	'2607:fea8:5a80:0b9e:fd3d:f330:c653:4085',	'43.653225, -79.383186', 'Toronto'),
  (	6,	'2620:0022:4000:1201:1175:57cc:f2de:8638',	'45.421532, -75.697189', 'Ottawa'),
  (	7,	'2620:0022:4000:1201:1ffc:4241:e6a0:0587',	'45.421532, -75.697189', 'Ottawa'),
  (	8,	'2620:0022:4000:1201:1ffc:4241:e6a0:0587',	'45.421532, -75.697189', 'Ottawa'),
  (	9,	'2620:0022:4000:1201:1175:57cc:f2de:8638', '45.421532, -75.697189', 'Ottawa'),
  (	10,	'2620:0022:4000:1201:1ffc:4241:eff3:9502', '45.421532, -75.697189', 'Ottawa'),
  (	11,	'2620:0022:4000:1201:1ffc:4241:eff3:9502', '45.421532,- 75.697189', 'Ottawa'),
  (	12,	'2620:0022:4000:1201:1ffc:4241:e6a0:0587',	'45.421532, -75.697189', 'Ottawa');
