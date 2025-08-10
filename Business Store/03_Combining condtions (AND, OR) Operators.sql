USE Business_store;

-- Topic: Combining conditions wth AND, OR
	-- The AND operator in SQL is a logical operator used within the WHERE clause to combine multiple conditions.
    --  The OR operator in SQL is a logical operator used within the WHERE clause to combine multiple conditions.  It returns result if at least one of the conditions separated by OR.alter
    
-- Example


SELECT * FROM products;
	SELECT * FROM products WHERE Price> 300 AND Category_ID=2;
    
    SELECT * FROM products WHERE Product_ID >10 OR Category_ID=3;
    

SELECT * FROM Customers;
	SELECT * FROM Customers WHERE Country='USA' AND City='Boston';
    
    SELECT * FROM Customers WHERE Name='Chen Li' OR Country='India';
    

SELECT * FROM Orders;
	SELECT * FROM Orders WHERE Total_quantity=4 AND Total_amount > 200;
    
    SELECT * FROM Orders WHERE Total_amount= 199 OR payment_mode='Cash';


SELECT * FROM Payment;
	SELECT * FROM Payment WHERE Payment_mode='Credit Card' AND Payment_Status='Pending' ;
    
    SELECT * FROM Payment WHERE payment_mode= 'PayPal' OR payment_Status='Failed';
    

