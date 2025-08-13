USE Business_store;

--- Data Manipulation
		-- Data Manipulation in SQL refers to the commands used to perform oprations such as Adding, Modifying and Delecting records.
				-- Data Manipulation incluse,
						-- Insert
						-- Update
                        -- Delete
                        
				-- Important things to consider
						-- Data Types
                        -- Coulmn matching
                        -- Primary Key constrains
                        -- Foreign key constrains
                        -- Not null constrains

-- Insert

SELECT * FROM products;

INSERT INTO products(Product_name, Price, Description, Category_ID, Tags, Supplier)
VALUES
('Gaming Laptop', 899, 'Best gaming laptop for gamers', 1, 'electronics, protable', 'PulseGear');

SELECT * FROM products WHERE Product_name='Gaming Laptop';

