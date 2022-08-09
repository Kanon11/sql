SELECT f.name,p.name,f.price FROM (SELECT pr.* FROM products pr INNER JOIN categories c ON pr.id_categories=c.id WHERE (pr.price>1000 AND c.name LIKE 'Super Luxury%')) f INNER JOIN providers p ON f.id_providers=p.id ORDER BY f.name