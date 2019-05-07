Create database mtg_etl;
use mtg_etl;
ALTER DATABASE mtg_etl CHARACTER SET utf8 COLLATE utf8_general_ci;
CREATE TABLE core_card_objects (
  oracle_id INT PRIMARY KEY,
  id INT,
  name TEXT
);
ALTER TABLE core_card_objects
DROP COLUMN id;
ALTER TABLE core_card_objects
modify COLUMN oracle_id varchar(500);
CREATE TABLE set_description (
  id varchar(500) PRIMARY KEY,
  oracle_id varchar(500),
  set_name TEXT,
  rarity TEXT,
  reprint TEXT,
  promo TEXT,
  FOREIGN KEY (oracle_id) REFERENCES core_card_objects (oracle_id)
);
