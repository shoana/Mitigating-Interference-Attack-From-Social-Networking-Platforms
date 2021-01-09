CREATE TABLE IF NOT EXISTS logins_and_logouts (
    `account_accesses_action` VARCHAR(7) CHARACTER SET utf8,
    `account_accesses_timestamp` INT,
    `account_accesses_site` VARCHAR(16) CHARACTER SET utf8,
    `account_accesses_ip_address` VARCHAR(39) CHARACTER SET utf8
);
INSERT INTO logins_and_logouts VALUES
    ('Login',1603849010,'www.facebook.com','2607:fea8:5a80:b9e:1c47:2335:dc4a:256c'),
    ('Login',1603539362,'www.facebook.com','2607:fea8:5a80:b9e:1d5b:f274:949e:4ac2'),
    ('Log Out',1603539282,'m.facebook.com','2607:fea8:5a80:b9e:1d5b:f274:949e:4ac2'),
    ('Login',1603539172,'m.facebook.com','2607:fea8:5a80:b9e:1d5b:f274:949e:4ac2'),
    ('Login',1603393117,'www.facebook.com','2620:22:4000:1201:3ffe:57cc:f2de:8638'),
    ('Log Out',1601600534,'www.facebook.com','134.117.249.113'),
    ('Log Out',1601520778,'www.facebook.com','2401:db00:eef0:1120:3520:0:1c05:e832'),
    ('Login',1591840581,'www.facebook.com','2607:fea8:5a80:dcd:7d70:3d8b:bc3e:429f'),
    ('Login',1590884879,'m.facebook.com','2607:fea8:5a80:dcd:fdfd:7046:c7e:63e7'),
    ('Login',1590260166,'m.facebook.com','2607:fea8:5a80:dcd:39e0:7e02:dd2d:14ab'),
    ('Login',1589921675,'m.facebook.com','2607:fea8:5a80:dcd:1d93:d268:f3a2:b102'),
    ('Log Out',1587489942,'www.facebook.com','2607:fea8:5a80:dcd:7ca7:c67a:e56a:af1a'),
    ('Log Out',1587429943,'www.facebook.com','2607:fea8:5a80:dcd:c74:5008:d76a:c170'),
    ('Log Out',1587356201,'www.facebook.com','2607:fea8:5a80:dcd:d599:1dbd:4320:5a6c'),
    ('Log Out',1585955449,'www.facebook.com','2607:fea8:5a80:dcd:7c05:f0ad:d1b7:2253'),
    ('Log Out',1585541347,'www.facebook.com','2607:fea8:5a80:dcd:6ce1:e670:ffd6:9aba'),
    ('Log Out',1585541331,'www.facebook.com','2607:fea8:5a80:dcd:6ce1:e670:ffd6:9aba'),
    ('Log Out',1585535562,'www.facebook.com','2607:fea8:5a80:dcd:899c:ce63:8804:a283'),
    ('Login',1572752687,'www.facebook.com','2607:fea8:c2e0:37e8:b127:ba91:cd3f:b96b'),
    ('Login',1555286301,'www.facebook.com','2607:fea8:c2e0:19a:9cc3:5f85:3cf1:1213'),
    ('Log Out',1554843952,'www.facebook.com','2607:fea8:c2e0:19a:c9fb:20e5:66ee:9e1b'),
    ('Login',1554842230,'www.facebook.com','2607:fea8:c2e0:19a:c9fb:20e5:66ee:9e1b'),
    ('Login',1554073061,'m.facebook.com','2607:fea8:c2e0:19a:2c68:654c:d39:b796'),
    ('Login',1552916934,'m.facebook.com','208.98.222.55'),
    ('Login',1545154119,'www.facebook.com','2607:fea8:c2e0:19a:21f2:9d0e:263f:80f4'),
    ('Login',1542492573,'m.facebook.com','2607:fea8:c2e0:19a:4c30:2140:e396:7850'),
    ('Login',1542122513,'www.facebook.com','134.117.59.182'),
    ('Login',1541635922,'m.facebook.com','199.7.157.51'),
    ('Login',1539014054,'www.facebook.com','2607:fea8:c2e0:19a:4cef:af67:e976:c291'),
    ('Login',1537307722,'www.facebook.com','2607:fea8:c2e0:19a:150d:dd09:f76a:bb3c'),
    ('Login',1532098335,'www.facebook.com','2409:4072:6393:a347:d496:4783:899b:e487'),
    ('Login',1523316836,'www.facebook.com','2607:fea8:c2e0:19a:fd3b:969c:fb7c:48b1'),
    ('Login',1521742330,'www.facebook.com','2620:22:4000:e34:1ffd:84ba:a2c9:e5df'),
    ('Login',1520727528,'www.facebook.com','2607:fea8:c2e0:19a:d4bc:3907:f7f8:fc53'),
    ('Login',1515884968,'m.facebook.com','2607:fea8:c2e0:19a:50f1:2585:6a47:73f6'),
    ('Login',1515373228,'www.facebook.com','2607:fea8:c2e0:19a:f016:7f97:881a:7c28'),
    ('Login',1515370880,'www.facebook.com','2607:fea8:c2e0:19a:95df:4a21:8e59:1dc5'),
    ('Login',1513053218,'www.facebook.com','173.32.247.8'),
    ('Login',1511236234,'m.facebook.com','2607:fea8:c2e0:19a:70f5:36ba:d182:e641'),
    ('Login',1508192383,'www.facebook.com','2607:fea8:c2e0:19a:742d:5b9e:f500:2b77'),
    ('Login',1501381035,'www.facebook.com','2607:fea8:5a60:5bd:3958:cb92:43e:c2c6'),
    ('Login',1499804431,'m.facebook.com','199.7.157.20'),
    ('Login',1497987961,'www.facebook.com','24.114.79.81'),
    ('Login',1497982500,'www.facebook.com','24.114.79.81'),
    ('Log Out',1497981515,'www.facebook.com','24.114.79.81'),
    ('Login',1497980510,'www.facebook.com','24.114.79.81'),
    ('Login',1496163604,'www.facebook.com','134.117.247.160'),
    ('Login',1493159150,'www.facebook.com','2607:fea8:5a60:5bd:3d02:a38b:b259:efaa'),
    ('Login',1491751596,'www.facebook.com','2620:22:4000:e30:1fb5:57cc:f2de:8638'),
    ('Log Out',1491101107,'www.facebook.com','2620:22:4000:2006::13d7'),
    ('Login',1486338650,'www.facebook.com','134.117.250.15'),
    ('Login',1485494618,'www.facebook.com','2620:22:4000:e30:3f9b:efaf:3191:2d9f'),
    ('Login',1484068999,'m.facebook.com','134.117.247.176'),
    ('Login',1482632493,'www.facebook.com','199.119.233.184'),
    ('Log Out',1477772793,'www.facebook.com','2607:fea8:5a60:1e6:a9b1:8b8e:f43:e64e'),
    ('Login',1477772757,'www.facebook.com','2607:fea8:5a60:1e6:a9b1:8b8e:f43:e64e'),
    ('Login',1476071864,'www.facebook.com','134.117.249.97'),
    ('Log Out',1476071864,'www.facebook.com','134.117.249.97'),
    ('Login',1475971538,'www.facebook.com','134.117.247.209'),
    ('Login',1471496694,'www.facebook.com','2607:fea8:5880:18c:b034:7214:41e4:8f30'),
    ('Login',1468355530,'www.facebook.com','199.119.233.176'),
    ('Login',1468354839,'www.facebook.com','199.119.233.176'),
    ('Login',1467733325,'www.facebook.com','2607:fea8:5880:18c:4c42:aa72:5e:c6d4'),
    ('Log Out',1467733318,'www.facebook.com','2607:fea8:5880:18c:4c42:aa72:5e:c6d4'),
    ('Login',1467349620,'m.facebook.com','2607:fea8:5880:18c:3dfa:9d0a:6a9c:6d6'),
    ('Login',1466219428,'www.facebook.com','99.242.226.24'),
    ('Login',1463441292,'www.facebook.com','99.242.226.24'),
    ('Login',1463233823,'m.facebook.com','134.117.249.254'),
    ('Login',1462792007,'m.facebook.com','99.242.226.24'),
    ('Login',1462556823,'m.facebook.com','199.119.233.141'),
    ('Login',1461029446,'www.facebook.com','99.242.226.24'),
    ('Login',1459706997,'www.facebook.com','99.242.226.24'),
    ('Log Out',1459019955,'www.facebook.com','99.242.226.24'),
    ('Log Out',1459019955,'www.facebook.com','99.242.226.24'),
    ('Login',1459019904,'www.facebook.com','99.242.226.24'),
    ('Log Out',1459019893,'www.facebook.com','99.242.226.24'),
    ('Login',1459019834,'www.facebook.com','99.242.226.24'),
    ('Log Out',1459019805,'www.facebook.com','99.242.226.24'),
    ('Log Out',1459019804,'www.facebook.com','99.242.226.24'),
    ('Log Out',1459019804,'www.facebook.com','99.242.226.24'),
    ('Login',1459018743,'www.facebook.com','99.242.226.24'),
    ('Log Out',1458951456,'www.facebook.com','99.242.226.24'),
    ('Login',1458945866,'www.facebook.com','99.242.226.24'),
    ('Login',1458922147,'m.facebook.com','199.7.157.102'),
    ('Login',1458853141,'www.facebook.com','199.119.233.141'),
    ('Login',1458852583,'www.facebook.com','99.242.226.24'),
    ('Log Out',1443482989,'www.facebook.com','99.242.226.24'),
    ('Log Out',1443482989,'www.facebook.com','99.242.226.24'),
    ('Login',1443482317,'www.facebook.com','99.242.226.24'),
    ('Log Out',1442880451,'www.facebook.com','99.242.226.24'),
    ('Login',1442880188,'www.facebook.com','99.242.226.24'),
    ('Login',1439137395,'www.facebook.com','99.242.226.20'),
    ('Login',1439137394,'www.facebook.com','99.242.226.20'),
    ('Login',1437248469,'www.facebook.com','159.18.233.3'),
    ('Login',1437235495,'www.facebook.com','99.242.226.20'),
    ('Login',1437139573,'m.facebook.com','99.242.226.20'),
    ('Log Out',1437103465,'www.facebook.com','99.242.226.20'),
    ('Login',1437097559,'www.facebook.com','99.242.226.20'),
    ('Log Out',1437096941,'www.facebook.com','99.242.226.20'),
    ('Login',1437084936,'www.facebook.com','99.242.226.20');
