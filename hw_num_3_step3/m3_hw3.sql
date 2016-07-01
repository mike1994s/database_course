DROP TABLE IF EXISTS PaperSubmission;
DROP TABLE IF EXISTS Conference;
DROP TABLE IF EXISTS Venue;

PRAGMA foreign_keys = ON;

CREATE TABLE Conference(
    name TEXT,
    description TEXT
);
CREATE TABLE Venue(
    id INTEGER PRIMARY KEY,
    name TEXT,
    city TEXT,
    country TEXT,
    lat NUMERIC(7,5),
    lon NUMERIC(8,5)
);
CREATE TABLE PaperSubmission(
  id INTEGER PRIMARY KEY,
  conference TEXT,
  year INTEGER,
  title TEXT,
  isbn TEXT,
  page INTEGER,
  venue_id INTEGER
);

INSERT INTO Conference(name, description) VALUES ('SIGMOD', 'The annual ACM SIGMOD/PODS conference is a leading international forum for database researchers, practitioners, developers, and users to explore cutting-edge ideas and results, and to exchange techniques, tools, and experiences');
INSERT INTO Conference(name, description) VALUES ('VLDB', 'VLDB is a premier annual international forum for data management and database researchers, vendors, practitioners, application developers, and users');
INSERT INTO Venue(id, name, city, country, lat, lon) VALUES (1, 'Moscone Center', 'San Francisco', 'US', 37.78417, -122.40155);
INSERT INTO Venue(id, name, city, country, lat, lon) VALUES (2, 'Davos Congress Centre', 'Davos', 'CH', 46.7939, 9.82091);
INSERT INTO PaperSubmission(id, conference, year, title, isbn, page, venue_id) VALUES
  (1, 'SIGMOD', 2016, 'Creating yellow squared submarines from iron', NULL, NULL, 1);
