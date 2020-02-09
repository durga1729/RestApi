DROP TABLE IF EXISTS person;
 
CREATE TABLE person (
  id INT AUTO_INCREMENT  PRIMARY KEY,
  first_name VARCHAR(250) NOT NULL,
  last_name VARCHAR(250) NOT NULL,
  favourite_colour VARCHAR(250) NOT NULL,
  age int,
  hobby VARCHAR(250) NOT NULL
);
 
INSERT INTO person (first_name, last_name, favourite_colour, age,hobby) VALUES
  ('Aliko', 'Dangote', 'Green',23,'Chess,Acting'),
  ('Bill', 'Gates', 'Yellow',32,'Gardening,,Stamp-collection'),
  ('Folrunsho', 'Alakija', 'Pink','45','StampCollection , Loitering');
  