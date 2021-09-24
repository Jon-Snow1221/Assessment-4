--- Artist Table ---

-- #1
INSERT INTO artist (name)
VALUES ('Taylor Swift'),
('21 Pilots'), ('Macklemore');

-- #2
SELECT * FROM artist
ORDER BY name LIMIT 5;

--- Employee Table ---

-- #1
SELECT last_name, first_name FROM employee
WHERE city = 'Calgary';

-- #2
SELECT * FROM employee
WHERE reports_to = 2;

-- #3
SELECT COUNT(*) FROM employee 
WHERE city = 'Lethbridge';

--- Invoice Table ---

-- #1
SELECT COUNT(*) FROM invoice
WHERE billing_country = 'USA';

-- #2
SELECT MAX(total) FROM invoice;

-- #3
SELECT MIN(total) FROM invoice;

-- #4
SELECT * FROM invoice
WHERE total > 5;

-- #5
SELECT COUNT(*) FROM invoice
WHERE total < 5;

-- #6
SELECT SUM(total) FROM invoice;

--- Join Queries ---

-- #1
SELECT * FROM invoice i
JOIN invoice_line il ON il.invoice_id = i.invoice_id 
WHERE il.unit_price > 0.99;

-- #2
SELECT i.invoice_date, c.first_name, c.last_name, i.total
FROM invoice i
JOIN customer c ON c.customer_id = i.customer_id;

-- #3
SELECT c.first_name, c.last_name, e.first_name, e.last_name
FROM customer c
JOIN employee e ON c.support_rep_id = e.employee_id;

-- #4
SELECT al.title, ar.name
FROM album al
JOIN artist ar ON al.artist_id = ar.artist_id;

--- EXTRA CREDIT ---

--- Artist Table ---

-- #1
SELECT * FROM artist ORDER BY name DESC LIMIT 10;

-- #2
SELECT * FROM artist WHERE name LIKE 'Black%';

-- #3
SELECT * FROM artist WHERE name LIKE '%Black%';

--- Employee Table ---

-- #1
SELECT MAX(birth_date) FROM employee;

-- #2
SELECT MIN(birth_date) FROM employee;


--- Invoice Table ---

-- #1
SELECT COUNT(total) FROM invoice
WHERE billing_state IN ('CA', 'TX', 'AZ');

-- #2
SELECT AVG(total) FROM invoice;

--- Join Queries ---

-- #1
SELECT pt.track_id FROM playlist_track pt
JOIN playlist p ON p.playlist_id = pt.playlist_id
WHERE p.name = 'Music';

-- #2
SELECT t.name
FROM track t
JOIN playlist_track pt ON pt.track_id = t.track_id
WHERE playlist_id = 5;

-- #3
SELECT t.name, p.name
FROM track t
JOIN playlist_track pt ON pt.track_id = t.track_id
JOIN playlist p ON p.playlist_id = pt.playlist_id;

-- #4
SELECT t.name, a.title
FROM track t
JOIN album a ON a.album_id = t.album_id
JOIN genre g ON g.genre_id = t.genre_id
WHERE g.name = 'Alternative & Punk';