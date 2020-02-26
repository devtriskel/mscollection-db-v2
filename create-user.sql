-- -----------------------------------------------------
-- Create user musiccollection
-- -----------------------------------------------------
CREATE USER 'musiccollection'@'localhost' IDENTIFIED BY 'musiccollection';

GRANT ALL PRIVILEGES ON * . * TO 'musiccollection'@'localhost';

ALTER USER 'musiccollection'@'localhost' IDENTIFIED WITH mysql_native_password BY 'musiccollection';
