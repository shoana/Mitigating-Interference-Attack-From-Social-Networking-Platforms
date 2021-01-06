--same network (first 4 blocks), different devices (last 4 blocks), the long/lat, the city: shows who were present together and where 
SELECT login_IP, user_name, user_IP.account_activity_lat_long, user_IP.account_activity_city 
  FROM login_info INNER JOIN user_IP ON login_info.login_IP=user_IP.IP_address 
  GROUP BY login_IP

--events going, who went to that event and if they were present in the location at the same time 
SELECT user_name, event_going, date_of_date, location_event FROM events_going 
INNER JOIN user_IP 
ON events_going.location_event=user_IP.account_activity_lat_long
INNER JOIN login_info 
ON login_info.login_IP=user_IP.IP_address
GROUP BY user_name, event_going, date_of_date
ORDER BY event_going

--below are for commonally asked questions

SELECT user_name, hobby from profile_info WHERE user_name='Shoana'
SELECT user_name, educational_institution from profile_info WHERE user_name='Sarah'
SELECT user_name, brithdate from profile_info WHERE user_name='Mounica'
