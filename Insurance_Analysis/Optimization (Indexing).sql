-- Discuss the creation of INDEXES on any columns used frequently in WHERE Clause or as join keys to improve performance

SELECT * FROM Customer_details;

CREATE INDEX Customer_details_Index  
ON Customer_Details
(
Customer_ID, 
Name,
Age,
City,
ZipCode,
Employment_Type
);


SELECT * FROM customer_plan_taken;

CREATE INDEX customer_plan_taken_Index
ON customer_plan_taken
(
policy_Number,
Policy_category_ID,
Type_of_policy,
Company_name
)
;

SELECT * FROM Claims;

CREATE INDEX Claim_Index
ON Claims
(
Claim_ID,
Customer_ID,
Claim_date,
Claim_amount
);


SELECT * FROM Companies;

CREATE INDEX Companies_Index 
ON Companies
(
Company_ID,
Company_name,
Location
);

