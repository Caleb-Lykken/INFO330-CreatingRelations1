
-- table for registrations--
CREATE TABLE IF NOT EXISTS "registrations" (
    "studentID" STRING NVARCHAR(40) NOT NULL,
    "course" STRING NVARCHAR(400),
    "grade" FLOAT DEFAULT NULL,
    FOREIGN KEY ([studentID]) REFERENCES "studentID" ([students]),
    FOREIGN KEY ([course]) REFERENCES "code" ([courses])
);

-- insert statements--

INSERT INTO registrations (studentID, course, grade) VALUES ('1', 'INFO33A', 3.4);
INSERT INTO registrations (studentID, course, grade) VALUES ('1', 'INFO448A', 3.4);
INSERT INTO registrations (studentID, course, grade) VALUES ('1', 'INFO314', 3.53);
INSERT INTO registrations (studentID, course, grade) VALUES ('3', 'INFO330A', 3.3);
INSERT INTO registrations (studentID, course, grade) VALUES ('3', 'INFO449A', 2.3);
INSERT INTO registrations (studentID, course, grade) VALUES ('2', 'BAW0100', 2.3);
INSERT INTO registrations (studentID, course, grade) VALUES ('2', 'BAW100A', 2.7);
INSERT INTO registrations (studentID, course, grade) VALUES ('4', 'BAW0100', 2.9);