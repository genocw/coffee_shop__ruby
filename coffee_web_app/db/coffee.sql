DROP TABLE IF EXISTS coffees;
DROP TABLE IF EXISTS roasters;


CREATE TABLE roasters (
  id            SERIAL8 PRIMARY KEY,
  name          VARCHAR(255),
  location      VARCHAR(255),
  rating        DECIMAL(3, 1),
  image         VARCHAR(255),
  blurb_sml     TEXT,
  blurb_lrg     TEXT
);

CREATE TABLE coffees (
  id            SERIAL8 PRIMARY KEY,
  name          VARCHAR(255),
  roaster_id    INT8 REFERENCES roasters(id) ON DELETE CASCADE,
  profile       VARCHAR(255),
  origin        VARCHAR(255),
  process       VARCHAR(255),
  primary_taste VARCHAR(255),
  image         VARCHAR(255),
  rating        DECIMAL(3, 1),
  blurb         TEXT
);
