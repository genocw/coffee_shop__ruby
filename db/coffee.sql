DROP TABLE IF EXISTS coffees;
DROP TABLE IF EXISTS roasters;


CREATE TABLE roasters (
  id            SERIAL8 PRIMARY KEY,
  name          VARCHAR(255),
  location      VARCHAR(255),
  total_sold     VARCHAR(255)
);

CREATE TABLE coffees (
  id            SERIAL8 PRIMARY KEY,
  name          VARCHAR(255),
  roaster_id    INT8 REFERENCES roasters(id) ON DELETE CASCADE,
  profile       VARCHAR(255),
  region        VARCHAR(255),
  primary_taste VARCHAR(255),
  in_stock      BOOLEAN,
  total_sold    INT8
);
