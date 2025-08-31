
-- Functions in SQL
	-- SQL functions are pre-defined or user-defined routines within a database management system that perform specific operations on data and return a result. 
	-- They are similar to functions in programming languages, taking input parameters (or no parameters) and producing an output.
    
-- Mathematical functions
	-- ABS(x) -----> It gives absolute values
    -- FLOOR(x) ------> It returns the largest integer less than or equal to the specified numeric expression.
    -- CEIL(x) ------>   returns the smallest integer greater than, or equal to, the specified numeric
    -- ROUND (X, decimal) -----> It rounds a number to a specified number of decimal places
    -- SQRT(x) -----> It give the square root of a values
    

SELECT ABS(-50.5787);  # output: 50.5787
SELECT ABS(8932.34);   # 8932.34

SELECT FLOOR(30.3); # 30
SELECT FLOOR (35.89); # 35

SELECT CEIL(30.3); # 31
SELECT CEIL (32.78); # 33


SELECT ROUND(110.5689, 2); # 110.56
SELECT ROUND(14546.46549872, 3); # 14546.465

SELECT SQRT(16); # 4
SELECT ROUND(SQRT(45678), 2)


