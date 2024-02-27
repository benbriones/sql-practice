-- write your queries here
SELECT *
    FROM owners
    FULL OUTER JOIN vehicles
    ON (owners.id = vehicles.owner_id);

-- groupby owner_id
SELECT first_name, COUNT(owner_id)
    FROM vehicles
        INNER JOIN owners
            ON owners.id = vehicles.owner_id
    GROUP BY first_name
    ORDER BY first_name;

SELECT first_name, ROUND(AVG(price)) AS average_price, COUNT(owner_id) AS count
    FROM owners
        INNER JOIN vehicles
            ON owners.id = vehicles.owner_id
    GROUP BY first_name
    HAVING COUNT(owner_id) > 1 AND AVG(price) > 10000
    ORDER BY first_name DESC;

-- dont need 0 in average, ideally group by owners.id