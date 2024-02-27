-- write your queries here
SELECT *
    FROM owners
    FULL OUTER JOIN vehicles
    ON (owners.id = vehicles.owner_id);