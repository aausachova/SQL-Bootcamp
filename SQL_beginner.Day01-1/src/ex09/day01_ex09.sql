SELECT name
FROM pizzeria
WHERE id IN (
    SELECT id
    FROM pizzeria
    EXCEPT
    SELECT pizzeria_id
    FROM person_visits
);

SELECT name
FROM pizzeria p
WHERE NOT EXISTS (
    SELECT 1
    FROM person_visits pv
    WHERE pv.pizzeria_id = p.id
);