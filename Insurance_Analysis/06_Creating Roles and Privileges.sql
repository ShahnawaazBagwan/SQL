-- Creating Roles and Permission

CREATE USER 'MIKE'@'localhost' IDENTIFIED BY 'Mike@0987';  -- Creating a new user
CREATE ROLE 'Claim_Analyst'; -- Creating a role for user

GRANT SELECT ON Customer_plan_taken TO 'Claim_Analyst';
GRANT SELECT ON Claims TO 'Claim_Analyst';
GRANT SELECT ON Policy_categories TO 'Claim_Analyst';
GRANT SELECT ON Policy_types TO 'Claim_Analyst';

 -- Granting Privileges to role -- means what user can do
GRANT 'Claim_Analyst' TO 'MIKE'@'localhost'; -- Assign Role to User
SET DEFAULT ROLE 'Claim_Analyst' TO 'MIKE'@'localhost'; -- Make Role Active by Default


------------------------------------------------------------
-- Creating New User and Role
CREATE USER 'Steve'@'localhost' IDENTIFIED BY  'Steve@4562';
CREATE ROLE 'Claim Manager';

GRANT SELECT, INSERT, UPDATE, DELETE ON Claims TO 'Claim Manager';
GRANT SELECT, INSERT, UPDATE, DELETE ON Customer_plan_taken TO 'Claim Manager';
GRANT SELECT, INSERT, UPDATE, DELETE ON Policy_categories TO 'Claim Manager';
GRANT SELECT, INSERT, UPDATE, DELETE ON Policy_types TO 'Claim Manager';

GRANT  'Claim Manager' TO 'Steve'@'localhost';
SET DEFAULT ROLE 'Claim Manager' TO 'Steve'@'localhost';
