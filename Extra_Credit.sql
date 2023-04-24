-- create time slots table --
CREATE TABLE IF NOT EXISTS timeslots (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    start_time TIME NOT NULL,
    end_time TIME NOT NULL,
    CONSTRAINT timeslot_unique UNIQUE(start_time, end_time)
);

ALTER TABLE rooms ADD COLUMN id INTEGER;

PRAGMA foreign_keys=off;

BEGIN TRANSACTION;

ALTER TABLE rooms RENAME TO old_table;

-- define the primary key constraint here
CREATE TABLE rooms ( 
'number' INTEGER,
'buildingid' INTEGER NVARCHAR(80),
'seating' INTEGER,
id INTEGER PRIMARY KEY,
FOREIGN KEY ([buildingid]) REFERENCES "id" ([buildings])
);

INSERT INTO rooms SELECT * FROM old_table;

COMMIT;

PRAGMA foreign_keys=on;

DROP TABLE old_table;

CREATE TABLE IF NOT EXISTS schedule (
    coursecode STRING NVARCHAR(400) NOT NULL,
    roomid INTEGER NOT NULL,
    timeslotid INTEGER NOT NULL,
    PRIMARY KEY (coursecode, roomid, timeslotid),
    FOREIGN KEY (roomid) REFERENCES rooms(id),
    FOREIGN KEY (timeslotid) REFERENCES timeslots(id)
);

INSERT INTO timeslots (start_time, end_time) VALUES ('09:00:00', '10:30:00');
INSERT INTO timeslots (start_time, end_time) VALUES ('10:45:00', '12:15:00');

INSERT INTO schedule (coursecode, roomid, timeslotid) VALUES ('INFO33A', 1, 1);
INSERT INTO schedule (coursecode, roomid, timeslotid) VALUES ('INFO314', 1, 2);