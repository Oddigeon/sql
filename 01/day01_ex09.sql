SELECT name
FROM pizzeria piz
WHERE piz.id NOT IN (SELECT pizzeria_id FROM person_visits);

SELECT name
FROM pizzeria piz
WHERE NOT EXISTS (SELECT pizzeria_id FROM person_visits pv WHERE pv.pizzeria_id = piz.id);
