CREATE TABLE IF NOT EXISTS relationship (
  username VARCHAR(40),
  relatonship VARCHAR(40),
  username_of_relation VARCHAR(40)
);

INSERT INTO relationship VALUES
('Shoana', 'Cousin', 'Mounica'),
('Sarah', 'Friend', 'Shoana'),
('Anisha', 'Sister', 'Shoana');
