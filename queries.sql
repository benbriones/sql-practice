-- write your queries here
SELECT *
    FROM owners
    FULL OUTER JOIN vehicles
    ON (owners.id = vehicles.owner_id);

SELECT first_name, COUNT(owner_id)
    FROM vehicles
        INNER JOIN owners
            ON owners.id = vehicles.owner_id
    GROUP BY first_name
    ORDER BY first_name;