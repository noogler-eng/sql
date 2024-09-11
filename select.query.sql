-- longlist is table 
-- selecting everything from table (every coloumn)
SELECT * FROM longlist;

-- selecting specific coloumn from table
SELECT title FROM longlist;
SELECT content FROM longlist;

-- selecting everything but only 10 rows at a time
SELECT * FROM longlist LIMIT 10;

-- selecting specific things in certains conditions
SELECT title, authors FROM longlist 
    WHERE year = 2023;
    WHERE year != 2022;
    WHERE title != 'this is my book';
    -- <> means =
    WHERE year<>2022;
    WHERE NOT title = 'this is my book';

SELECT title, price FROM longlist
	WHERE price IS NULL;
	WHERE price IS NOT NULL;

-- gives title and price of that row which title has love init anywhere
-- ...love...
SELECT title, price FROM longlist
	WHERE title LIKE '%love%';

-- gives title and price of that title starts with love...
SELECT title, price FROM longlist
	WHERE title LIKE 'love%';

-- pattern matching
SELECT title FROM longlist
	WHERE title LIKE 'p_re';
SELECT title FROM longlist
	WHERE title LIKE 't___';	

-- conditions
SELECT title FROM longlist
	WHERE (year > 2018 AND year < 2023);
SELECT title FROM longlist
	WHERE (year >= 2019 AND year <= 2022);
SELECT title FROM longlist
	WHERE year BETWEEN 2019 AND 2022;

-- ordering by rating
SELECT title, rating FROM longlist
	ORDER BY rating DESC LIMIT 10;
SELECT title, rating FROM longlist
	 ORDER BY rating DESC, votes DESC 
	 LIMIT 10;
-- arrange alphabetically
SELECT title FROM longlist
	 ORDER BY title;

-- aggerate function - count, avg, min, max, sum
-- it gives output in which form we require
-- infront as comes as an output
SELECT AVG(rating) FROM longlist;
SELECT ROUND(AVG(rating), 2) FROM longlist;
SELECT ROUND(AVG(rating), 2) AS average_rating FROM longlist;
SELECT MAX(rating) FROM longlist;
SELECT SUM(votes) FROM longlist;
SELECT COUNT(*) FROM longlist;
SELECT COUNT(translator) FROM longlist;
-- it gives on the basis of starting letter
SELECT MAX(title), MIN(title) FROM longlist;
-- gives distinct characters 
SELECT DISTINCT publisher FROM longlist;
SELECT COUNT(DISTINCT publisher) FROM longlist;