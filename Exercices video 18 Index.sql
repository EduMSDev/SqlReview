-- Exercices Video 18 Index
-- UNIKE KEY: constraint uniquely identifies each record in a table.
-- Primary keys must contain UNIQUE values, and cannot contain NULL values.
CREATE TABLE ejemplo (dni varchar(20), nombre varchar(20), apellido varchar(20), edad TINYINT, PRIMARY KEY (dni)); 
ALTER TABLE ejemplo ADD PRIMARY KEY (dni);

-- INDEX: It helps index the contents of various columns to facilitate searches 
-- for content when running queries on those tables.
CREATE INDEX myindex ON ejemplo (apellido);

-- UNIKE INDEX: Unlike the PRIMARY KEY index, you can have more than one UNIQUE index per table.
CREATE UNIQUE INDEX myindice ON ejemplo (apellido);
CREATE UNIQUE INDEX myindice ON ejemplo (nombre, apellido);