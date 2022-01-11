-- Exercices video 19 Delete Index
DROP INDEX miindice ON ejemplo(dni);

ALTER TABLE ejemplo ADD PRIMARY KEY(dni);
ALTER TABLE ejemplo DROP PRIMARY KEY;