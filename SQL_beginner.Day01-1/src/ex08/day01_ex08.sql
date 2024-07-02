SELECT order_date,
       CONCAT(person.name, ' (возраст:', person.age, ')') AS person_information
FROM person_order
NATURAL JOIN person
ORDER BY order_date, person_information;