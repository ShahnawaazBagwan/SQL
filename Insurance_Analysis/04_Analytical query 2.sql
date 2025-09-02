-- Using analytical functions to determine the monthly claim frequency and average calim amount

USE Insurance_Analysis;

select * from Claims;

SELECT 
		Claim_ID,
		DATE_FORMAT(Claim_date, '%y-%m') as Claim_month,
        Claim_amount,
        
		COUNT(Claim_ID)
		OVER(PARTITION BY DATE_FORMAT(Claim_date, '%y-%m')) as Monthly_Claim_Frequency,

		AVG(Claim_amount)
		OVER(PARTITION BY DATE_FORMAT(Claim_date, '%y-%m')) AS Monthly_Avg_Claim_Frequency

FROM Claims
ORDER BY Claim_month, Claim_ID;
