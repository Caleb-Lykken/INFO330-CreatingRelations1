--table for buildings--

CREATE TABLE IF NOT EXISTS 'buildings' (
'name' STRING NVARCHAR(80) NOT NULL,
'shortname' STRING NVARCHAR(80),
'id' INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL ,
CONSTRAINT shortnameunique UNIQUE(shortname)
);
INSERT INTO buildings (name, shortname) VALUES ('MaryGates', 'MGH');
INSERT INTO buildings (name, shortname) VALUES ('DaveyHall', 'DMD');
INSERT INTO buildings (name, shortname) VALUES ('MinorHall', 'MIN');
INSERT INTO buildings (name, shortname) VALUES ('CheekyHall', 'CHE');

-- create table for rooms --

CREATE TABLE IF NOT EXISTS 'rooms' (
'number' INTEGER,
'buildingid' INTEGER NVARCHAR(80),
'seating' INTEGER,
FOREIGN KEY ([buildingid]) REFERENCES "id" ([buildings])
);

INSERT INTO rooms VALUES (456, (SELECT id FROM buildings WHERE name='MaryGates'), 23);
INSERT INTO rooms VALUES (345, (SELECT id FROM buildings WHERE name='DaveyHall'), 34);
INSERT INTO rooms VALUES (324, (SELECT id FROM buildings WHERE name='MinorHall'), 45);
INSERT INTO rooms VALUES (123, (SELECT id FROM buildings WHERE name='CheekyHall'), 67);
