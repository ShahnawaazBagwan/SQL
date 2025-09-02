-- Write a query to calculate the total number of claim per policy type

USE Insurance_Analysis;
SELECT * FROM Claims;


SELECT 
    policy_Category_ID,
    policy_Category_Name,
    Type_of_Policy,
    COUNT(*) AS Total_Claims
FROM Claims
GROUP BY policy_Category_ID, policy_Category_Name, Type_of_Policy;