USE business_store;


-- HAVING clause

	-- HAVING clasue is used to filter the group data, it comes after the group clasue.

SELECT * FROM products;


SELECT  DISTINCT City from customers;
SELECT Count(City) from customers;

SELECT  C.Category_name From categories AS C JOIN products as P ON C.Category_ID= P.Category_ID
GROUP BY C.Category_name HAVING COUNT(P.Product_ID);
 
 
 SELECT Category_ID, Category_name  from categories AS C JOIN products as P ON C.Category_ID= P.Category_ID
 GROUP BY Category_name HAVING COUNT(p.Product_ID)>10;
 
SELECT P.Product_name, C.Category_ID FROM products group by COUNT(Category_ID);


SELECT Product_name, Product_ID, C.Category_ID, COUNT(C.Category_ID) FROM products AS P JOIN categories AS C ON P.Category_ID = C.Category_ID
GROUP BY Product_name, Product_ID, C.Category_ID Having C.Category_ID=1;


SELECT product_name, product_ID FROM products AS p JOIN categories AS C ON P.Category_ID = C.Category_ID
WHERE Category_name = 'Electronics';



