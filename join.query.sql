-- JOIN
SELECT * FROM sea_lions;
SELECT * FROM migrations;

-- INNER JOIN
-- which two coloums we trie to join
-- it gets only the coloums which has matched id as output
SELECT * FROM sea_lions
	JOIN migrations ON migrations.id = sea_lions.id;

-- LEFT JOIN, RIGHT JOIN, FULL JOIN
-- it is not strict so gives all id's of sea_lions, event not present gives null
SELECT * FROM sea_lions
	LEFT JOIN migrations ON migrations.id = sea_lions.id;
	
SELECT * FROM sea_lions
	RIGHT JOIN migrations ON migrations.id = sea_lions.id;

-- both table fully join
SELECT * FROM sea_lions
	FULL JOIN migrations ON migrations.id = sea_lions.id;

-- natural join
SELECT * FROM sea_lions
	NATURAL JOIN migrations ON migrations.id = sea_lions.id;
		
-- UNION, EXCEPT, INTERSECT
-- combines both name
SELECT name FROM translators UNION SELECT name FROM authors;
-- all name except author name
SELECT name FROM translators EXCEPT SELECT name FROM authors;
-- name which present in both
SELECT name FROM translators INTERSECT SELECT name FROM authors;

-- groups
-- grouping by book_id
-- only those haveing rating > 4.0
-- in book_id group by average_rating in descending order
SELECT book_id, ROUND(AVG(rating), 2) AS average_rating FROM ratings
    GROUP BY book_id
    HAVING average_rating > 4.0
    ORDER BY average_rating DESC;