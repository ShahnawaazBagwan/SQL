USE Business_store;

--- Data Manipulation
		-- Data Manipulation in SQL refers to the commands used to perform oprations such as Adding, Modifying and Delecting records.
				-- Data Manipulation incluse,
						-- Insert
						-- Update
                        -- Delete
-- Delete or Drop or truncate
	-- DELETE only the records but not the structure of the table
    -- DROP remove the records as well as the structure of the table
	-- TRUNCATE also remove the records but not the structure of the table

CREATE TABLE creating_to_delect(
Demo VARCHAR(50)
);

DELETE FROM  creating_to_delect;


DROP table  creating_to_delect;
	
TRUNCATE creating_to_delect;
