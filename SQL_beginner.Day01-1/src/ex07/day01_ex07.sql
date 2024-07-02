SELECT order_date,
       CONCAT(person.name, ' (возраст:', person.age, ')') AS person_information
FROM person_order
JOIN person ON person_order.person_id = person.id -- соединяем таблицы person и person_order по столбцу person_id
ORDER BY order_date, person_information;