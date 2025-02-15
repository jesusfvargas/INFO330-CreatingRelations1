DROP TABLE IF EXISTS student_courses;

CREATE TABLE student_courses (
    studentid INTEGER NOT NULL,
    course VARCHAR(40),
    grade REAL DEFAULT NULL,
    PRIMARY KEY (studentid, course),
    FOREIGN KEY (studentid) REFERENCES students (id),
    FOREIGN KEY (course) REFERENCES courses (code)
);

INSERT INTO student_courses (studentid, course)
VALUES (1, 'INFO330A'),
       (1, 'INFO448A'),
       (1, 'INFO314'),
       (3, 'INFO330A'),
       (3, 'INFO449A'),
       (2, 'BAW0100'),
       (2, 'BAW100A'),
       (4, 'BAW0100');
