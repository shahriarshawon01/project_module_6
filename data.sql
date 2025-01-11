-- authors Table Queries

-- 1
INSERT INTO authors (author_name) VALUES ('Author Name');

-- 2
SELECT * FROM authors;

-- 3
SELECT * FROM authors WHERE id = ?;

-- 4
UPDATE authors SET author_name = 'New Name' WHERE id = ?;

-- 5
DELETE FROM authors WHERE id = ?;

-- categories 

-- 6
INSERT INTO categories (category_name) VALUES ('Category Name');

-- 7
SELECT * FROM categories;

-- 8
SELECT * FROM categories WHERE id = ?;

-- 9
UPDATE categories SET category_name = 'New Category Name' WHERE id = ?;

-- 10
DELETE FROM categories WHERE id = ?;

-- blogs 

-- 11
INSERT INTO blogs (title, body, category_id, author_id) VALUES ('Blog Title', 'Blog Content', category_id, author_id);

-- 12
SELECT * FROM blogs;

-- 13
SELECT * FROM blogs WHERE id = ?;

-- 14
SELECT blogs.*, categories.category_name, authors.author_name 
FROM blogs 
JOIN categories ON blogs.category_id = categories.id 
JOIN authors ON blogs.author_id = authors.id;

-- 15
UPDATE blogs SET title = 'New Blog Title' WHERE id = ?;

-- 16
UPDATE blogs SET category_id = new_category_id, author_id = new_author_id WHERE id = ?;

-- 17
DELETE FROM blogs WHERE id = ?;

-- Specific Queries

-- 18
SELECT * FROM blogs WHERE author_id = ?;

-- 19
SELECT * FROM blogs WHERE category_id = ?;
