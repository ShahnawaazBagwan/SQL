-- product table

SELECT * FROM Products;

SELECT Product_name, Price FROM Products;

SELECT Product_name, Price FROM Products WHERE Price > 299;


-- Orders table

SELECT * FROM Orders;

SELECT * FROM Orders WHERE Customer_ID =23;
SELECT * FROM Orders WHERE Customer_ID >10;

SELECT * FROM Orders WHERE payment_mode= 'UPI' ;


-- Customer Table

SELECT * FROM Customers;

SELECT * FROM Customers WHERE Country='Italy';

SELECT * FROM Customers WHERE Customer_ID=25;


-- Categories table

SELECT * FROM Categories;

SELECT * FROM Categories WHERE Category_ID= 6;


-- payment table

SELECT * FROM Payment;

SELECT * FROM Payment where Payment_mode='paypal';