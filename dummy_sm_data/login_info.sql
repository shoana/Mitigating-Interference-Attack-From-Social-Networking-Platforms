CREATE TABLE IF NOT EXISTS login_info (
  login_IP VARCHAR(40),
  user_name VARCHAR(40),
  login_date VARCHAR(40) CHARACTER SET utf8
);

INSERT INTO login_info VALUES
  ('2620:0022:4000:1201:1175:57cc:f2de:8638',	'Shoana',	'oct 24, 2020'),
  ('2620:0022:4000:1201:1ffc:4241:e6a0:0587',	'Mounica', 'sept 13, 2020'),
  ('2620:0022:4000:1201:1ffc:4241:e6a0:0587',	'Sarah',	'dec 10, 2020'),
  ('2620:0022:4000:1201:1175:57cc:f2de:8638', 'Shoana',	'oct 24, 2020'),
  ('2620:0022:4000:1201:1ffc:4241:eff3:9502', 'Shoana',	'dec 10, 2020'),
  ('2620:0022:4000:1201:1ffc:4241:eff3:9502',	'Mounica', 'sept 13, 2020'),
  ('2620:0022:4000:1201:1ffc:4241:e6a0:0587',	'Mounica',	'sept 13, 2020'),
  ('2620:0022:4000:1201:1ff5:57cc:f2de:8638',	'Sarah', 'oct 24, 2020'),
  ('2620:0022:4000:1201:1ff5:57cc:f2de:8638',	'Shoana',	'sept 13, 2020'),
  ('2607:fea8:5a80:0b9e:1d5b:f274:949e:4ac2',	'Sarah', 'dec 10, 2020'),
  ('2620:0022:4000:1201:1ffc:4241:e6a0:0587',	'Mounica',	'oct 24, 2020'),
  ('2607:fea8:5a80:0b9e:fd3d:f330:c653:4085',	'Shoana',	'oct 24, 2020');
