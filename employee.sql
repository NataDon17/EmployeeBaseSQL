CREATE DATABASE skypro;
\с database skypro;
CREATE TABLE employee
(
    id         BIGSERIAL   NOT NULL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name  VARCHAR(50) NOT NULL,
    gender     VARCHAR(6)  NOT NULL,
    age        INT         NOT NULL
);
INSERT INTO employee (first_name, last_name, gender, age)
VALUES ('Alex', 'Maxx', 'male', 55);
INSERT INTO employee (first_name, last_name, gender, age)
VALUES ('Lara', 'Kraft', 'female', 21);
INSERT INTO employee (first_name, last_name, gender, age)
VALUES ('Jerry', 'Goldsmith', 'male', 42);
SELECT *
FROM employee;
UPDATE employee
SET first_name='Sasha',
    last_name='Black',
    gender='female',
    age=33
WHERE id = 2;
SELECT *
FROM employee;
DELETE
FROM employee
WHERE id = 1;
SELECT *
FROM employee;