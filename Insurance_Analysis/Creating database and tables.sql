CREATE DATABASE Insurance_Analysis;

USE Insurance_Analysis;

CREATE TABLE Companies(
Company_ID INT PRIMARY KEY NOT NULL,
Company_name VARCHAR(100),
Location VARCHAR(100),
Country VARCHAR(100)
);

CREATE TABLE Policy_Categories(
Policy_Category_ID  INT UNSIGNED AUTO_INCREMENT PRIMARY KEY NOT NULL,
Policy_Category_Name VARCHAR(255)
);

CREATE TABLE Policy_Types(
Policy_Category_ID INT UNSIGNED,
Policy_Category_Name VARCHAR(255),
Types_of_Policies VARCHAR(255),
	FOREIGN KEY(Policy_Category_ID) REFERENCES Policy_Categories(Policy_Category_ID)
);


CREATE TABLE Customer_Details(
	Customer_ID INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
	Name VARCHAR(255) UNIQUE,
	Gender VARCHAR(50),
	Age INT,
	City VARCHAR(255),
	Zipcode INT,
	Email VARCHAR(255) UNIQUE, -- Makw Email unique
	Phone_number BIGINT UNIQUE, -- Make Phone number unique
		CHECK(Phone_number BETWEEN 1000000000 AND 9999999999),
	Employment_Type VARCHAR(255),
	Salary_monthly DECIMAL(10, 2)
);


CREATE TABLE Customer_Plan_Taken
(
	Policy_Number INT UNSIGNED AUTO_INCREMENT PRIMARY KEY NOT NULL,
	Customer_ID INT UNSIGNED,
	Name VARCHAR(255),
    Policy_Category_ID INT UNSIGNED,
	Policy_Category_Name VARCHAR(255),
	Type_of_Policy VARCHAR(255),
    Company_ID INT,
    Company_name VARCHAR(50),
    Policy_start_date DATE,
	Duration_years INT,
	Monthly_pay DECIMAL(10, 2),
	Cover_amount DECIMAL(10, 2),
    Policy_end_date DATE,
    Phone_number BIGINT,
		CHECK(Phone_number BETWEEN 1000000000 AND 9999999999),
    Email VARCHAR(255),
		FOREIGN KEY(Customer_ID) REFERENCES Customer_Details(Customer_ID),
        FOREIGN KEY(Policy_Category_ID) REFERENCES Policy_Categories(Policy_Category_ID),
		FOREIGN KEY(Company_ID) REFERENCES Companies(Company_ID),
        FOREIGN KEY(Phone_number) REFERENCES Customer_Details(Phone_number),
        FOREIGN KEY(Email) REFERENCES Customer_Details(Email)
) AUTO_INCREMENT= 500001
;


CREATE TABLE Claims(
Claim_ID INT PRIMARY KEY NOT NULL,
Customer_ID INT UNSIGNED,
Customer_name VARCHAR(255),
Policy_Category_ID INT UNSIGNED,
Policy_Category_Name VARCHAR(255),
Type_of_Policy VARCHAR(255),
Claim_date DATE,
Claim_amount INT,
	FOREIGN KEY(Customer_ID) REFERENCES Customer_Details(Customer_ID),
    FOREIGN KEY (Policy_Category_ID) REFERENCES Customer_Plan_Taken(Policy_Category_ID)
);


