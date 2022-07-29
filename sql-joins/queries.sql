-- write your queries here--

--1. SELECT * FROM owners o FULL JOIN vehicles v ON o.id = v.owner_id;--

--2. SELECT first_name, last_name, COUNT(vehicles.owner_id) AS car_count FROM owners JOIN vehicles ON vehicles.owner_id = owners.id GROUP BY first_name, last_name ORDER BY car_count ASC;--

--3. SELECT first_name, last_name, CAST(AVG(price) AS INT) AS avg_price, COUNT(v.owner_id) AS car_count FROM owners o JOIN vehicles v ON v.owner_id = o.id GROUP BY first_name, last_name HAVING COUNT(v.owner_id) > 1 AND AVG(price) > 10000 ORDER BY first_name DESC;--
