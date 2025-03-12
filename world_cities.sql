-- Write your code below this line
-- You can run this file with the command sqlite3 world_cities.db < world_cities.sql
-- If you don't run this file before running the tests, some tests will fail even though your queries may be correct!
-- Need to create a db file locally to run the tests called world_cities.db
DROP TABLE IF EXISTS cities;

CREATE TABLE cities (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT,
    population INTEGER,
    country TEXT
);

INSERT INTO cities (name, population, country) VALUES
("New York", 8398745, "United States"),
("Tokyo", 13515271, "Japan"),
("Cairo", 9500000, "Egypt"),
("Sydney", 5312163, "Australia"),
("Sao Paulo", 12252023, "Brazil"),
("Paris", 2140526, "France"),
("Lagos", 14368332, "Nigeria"),
("Mumbai", 12442373, "India"),
("Osaka", 2752123, "Japan"),
("Beijing", 21542000, "China");

SELECT * FROM cities;

SELECT * FROM cities WHERE country = "Japan";

UPDATE cities SET population = 19400000 WHERE name = "Beijing";

SELECT * FROM cities WHERE name = "Beijing"; 

DELETE FROM cities WHERE name = "New York";
DELETE FROM cities WHERE name = "Cairo";
DELETE FROM cities WHERE name = "Paris";