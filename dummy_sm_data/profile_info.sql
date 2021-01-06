CREATE TABLE IF NOT EXISTS profile_info (
  user_name VARCHAR(40),
  hobby VARCHAR(40),
  music VARCHAR(40),
  educational_institution VARCHAR(40),
  job_updates VARCHAR(40),
  brithdate VARCHAR(40),
  signification_events VARCHAR(40)
);

INSERT INTO profile_info VALUES
  ('Shoana', 'Swimming', 'Coldplay', 'Carleton University', NULL, 'Dec 25th, 1980', 'Graduated: May 2021'),
  ('Shoana', 'Reading', 'One Republic', NULL, 'Stated Job: May 5th, 2021', NULL, NULL),
  ('Sarah', 'Soccer', 'Harry Styles', 'Carleton University', 'Stated Job: May 2nd, 2021', 'July 31, 1998', 'Graduated: May 2021'),
  ('Mounica', 'Painting', NULL, 'Carleton University', 'Stated Job: May 2nd, 2021', 'April 6, 1998', 'Graduated: May 2021');
