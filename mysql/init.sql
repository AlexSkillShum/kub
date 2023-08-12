CREATE DATABASE IF NOT EXISTS users;
CREATE USER 'admin'@'%' IDENTIFIED BY 'admin_skill';
GRANT ALL PRIVILEGES ON *.* TO 'admin'@'%'
WITH GRANT OPTION;

FLUSH PRIVILEGES;

USE users;

CREATE TABLE IF NOT EXISTS person (
  id INT(11) NOT NULL AUTO_INCREMENT, 
  name VARCHAR(32) NOT NULL,
  surname VARCHAR(32) NOT NULL,
  PRIMARY KEY (id)
);

INSERT INTO
  person (id, name, surname)
VALUES
  (1, 'Ivan', 'Oblyakov'),
  (2, 'Fedor', 'Chalov'),
  (3, 'Igor', 'Akinfeev'),
  (4, 'Mario', 'Fernandes'),
  (5, 'Konstantin', 'Kuchaev'); 

