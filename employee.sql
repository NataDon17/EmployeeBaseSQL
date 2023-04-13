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
HAVING COUNT(*) > 1
ORDER BY Максимальный_возраст;

CREATE TABLE city
(
    city_id   INT PRIMARY KEY,
    city_name VARCHAR(50) NOT NULL
);

ALTER TABLE employee
    ADD city_id INT;

ALTER TABLE employee
    ADD FOREIGN KEY (city_id) REFERENCES city (city_id);

INSERT INTO city (city_id, city_name)
VALUES (1, 'New York'),
       (2, 'Detroit'),
       (3, 'Philadelphia'),
       (5, 'Chicago'),
       (6, 'Washington');

UPDATE employee SET city_id=1 WHERE id = 32;
UPDATE employee SET city_id=2 WHERE id = 33;
UPDATE employee SET city_id=3 WHERE id = 34;

SELECT * FROM employee;
SELECT * FROM city;

SELECT employee.first_name AS Имя, employee.last_name AS Фамилия, city.city_name AS Город_проживания
FROM city
         INNER JOIN employee ON employee.city_id = city.city_id;

SELECT city.city_name AS Город_проживания, employee.first_name AS Имя, employee.last_name AS Фамилия
FROM city
         LEFT JOIN employee ON city.city_id = employee.city_id;

SELECT employee.first_name AS Имя, city.city_name AS Город
FROM city
         FULL OUTER JOIN employee ON city.city_id = employee.city_id;

SELECT employee.first_name AS Имя, city.city_name AS Город
FROM employee
         CROSS JOIN city;

SELECT city.city_name AS Город_нет_сотрудников
FROM city
         LEFT JOIN employee USING (city_id)
WHERE employee.city_id IS NULL;











