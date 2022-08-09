
--git test  asdf
SELECT a.name,b.name,c.name FROM  (SELECT p.* FROM products p WHERE ( p.id_providers IN ( SELECT id FROM providers WHERE NAME LIKE	'Sansul SA') AND p.id_categories IN (SELECT id FROM categories WHERE NAME LIKE 'Imported'))) a
JOIN providers b ON a.id_providers=b.id
JOIN categories c ON a.id_categories=c.id
