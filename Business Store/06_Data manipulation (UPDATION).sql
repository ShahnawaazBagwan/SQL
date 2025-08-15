USE Business_store;

-- Data manipulation
	-- Data Manipulation in SQL refers to the commands used to perform oprations such as Adding, Modifying and Delecting records.
				-- Data Manipulation incluse,
						-- Insert
						-- Update
                        -- Delete
-- update
	-- Important things to consider
		-- WHERE clause
        -- Data Type
        -- Backup Consideration

SELECT * FROM Products;
	
    -- updating the price of Gaming laptop from 899 to 1299
    
    UPDATE Products SET Price=1299 WHERE Product_name='Gaming Laptop';
    
## After run the above query got an error , error no: 1175 , to run the query successfully need to turn on the safe mode. Use this
	-- SET SQL_SAFE_UPDATES = 0;
	-- 0 to turn off the safe mode
	-- 1 to turn on the safe mode

## After turn on the safe mode you can successfully update the data.

SET SQL_SAFE_UPDATES =0;

    UPDATE Products SET Price=1299 WHERE Product_name='Gaming Laptop';
		SELECT * FROM Products WHERE product_name= 'Gaming Laptop';
