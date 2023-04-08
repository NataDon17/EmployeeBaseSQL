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
WHERE id = 32;
SELECT *
FROM employee;
DELETE
FROM employee
WHERE id = 31;
SELECT *
FROM employee;
INSERT INTO employee (first_name, last_name, gender, age)
VALUES ('Alex', 'Maxx', 'male', 55);
INSERT INTO employee (first_name, last_name, gender, age)
VALUES ('Lara', 'Kraft', 'female', 21);
INSERT INTO employee (first_name, last_name, gender, age)
VALUES ('Jack', 'Peers', 'male', 28);
SELECT first_name AS Имя, last_name AS Фамилия
FROM employee;
SELECT *
FROM employee
WHERE age < 30
   OR age > 50;
SELECT *
FROM employee
WHERE age BETWEEN 30 AND 50;
SELECT *
FROM employee
ORDER BY last_name DESC;
SELECT *
FROM employee
WHERE first_name LIKE '%_____%';
UPDATE employee
SET first_name='Sasha'
WHERE id = 35;
UPDATE employee
SET first_name='Alex'
WHERE id = 36;
SELECT first_name AS Имя,
       SUM(age)   AS Суммарный_возраст
FROM employee
GROUP BY Имя;
SELECT first_name AS Имя,
       MIN(age)   AS Минимальный_возраст
FROM employee
GROUP BY Имя;
SELECT first_name AS Имя, MAX(age) AS Максимальный_возраст
FROM employee
GROUP BY Имя
HAVING COUNT(*) = 1
ORDER BY Максимальный_возраст;










