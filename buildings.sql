DROP TABLE IF EXISTS buildings;

CREATE TABLE buildings (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name VARCHAR(80),
    shortname TEXT UNIQUE NOT NULL CHECK (length(shortname) <= 10)
);

DROP TABLE IF EXISTS rooms;

CREATE TABLE rooms (
    number INTEGER PRIMARY KEY,
    buildingid INTEGER NOT NULL,
    seating INTEGER,
    FOREIGN KEY (buildingid) REFERENCES buildings (id)
);
INSERT INTO buildings(name, shortname)
VALUES ('Mary Gates Hall', 'MGH');
INSERT INTO rooms(number,buildingid,seating)
VALUES (24,1,09);