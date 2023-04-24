-- table for students--
CREATE TABLE IF NOT EXISTS 'students' (
'id' integer PRIMARY KEY,
'firstname' string VARCHAR(40),
'lastname' string VARCHAR(80),
'age' numeric);

-- insert statments --

INSERT INTO students (id, firstname, lastname, age) VALUES (1, 'Fred', 'Flintstone', 35);
INSERT INTO students (id, firstname, lastname, age) VALUES (2, 'Wilma', 'Flintstone', 29);
INSERT INTO students (id, firstname, lastname, age) VALUES (3, 'Barney', 'Rubble', 33);
INSERT INTO students (id, firstname, lastname, age) VALUES (4, 'Betty', 'Rubble', 29);
INSERT INTO students (id, firstname, lastname, age) VALUES (5, 'Pebbles', 'Flintstone', 1);
INSERT INTO students (id, firstname, lastname, age) VALUES (6, 'Bam-Bam', 'Rubble', 1);
INSERT INTO students (id, firstname, lastname, age) VALUES (7, 'sonic', 'The-hedgehog', 3);
INSERT INTO students (id, firstname, lastname, age) VALUES (8, 'Johnny', 'Test', 8);
INSERT INTO students (id, firstname, lastname, age) VALUES (9, 'Jason', 'Derulo', 46);
INSERT INTO students (id, firstname, lastname, age) VALUES (10, 'Donald', 'Trum', 93);
INSERT INTO students (id, firstname, lastname, age) VALUES (11, 'Joe', 'Biren', 100);