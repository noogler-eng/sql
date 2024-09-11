-- NESTED QUERIES
-- authors to book : one to many 
-- publisher to book : one to many
-- primary key - unique key of table 
-- foriegn key - taking any primary key of other table

-- subqueries or nested-queries
SELECT title FROM books
	WHERE publisher_id = (
		SELECT id from publishers
			where publisher = 'any_name'
	    );
	
SELECT AVG(rating) FROM ratings 
	WHERE book_id = (
		SELECT id FROM books
			WHERE title = 'any_name'
	    );
	
	
SELECT author_id FROM authored
	where book_id = (
		SELECT id FROM books
			where title = 'any_name';
	    );

SELECT name FROM authors
	where id = (
		SELECT author_id FROM authored
			where book_id = (
				SELECT id FROM books
					where title = 'any_name';
			);
	    );
	
SELECT title from books 
	where book_id = (
		SELECT book_id from authored
			where author_id = (
				SELECT id from authors 
					WHERE name = 'any_name'
				)
			);