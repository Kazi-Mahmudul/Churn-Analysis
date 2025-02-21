-- Create Database
CREATE DATABASE telco_churn;
USE telco_churn;

-- Set local infile
SET GLOBAL local_infile = 1;
SHOW VARIABLES LIKE 'local_infile';

DROP TABLE IF EXISTS telco_customer_churn;

-- Create Table
CREATE TABLE telco_customer_churn (
    CustomerID VARCHAR(50),
    Count INT,
    Country VARCHAR(50),
    State VARCHAR(50),
    City VARCHAR(100),
    Zip_Code INT,
    Lat_Long VARCHAR(50),
    Latitude FLOAT,
    Longitude FLOAT,
    Gender VARCHAR(10),
    Senior_Citizen VARCHAR(10),
    Partner VARCHAR(10),
    Dependents VARCHAR(10),
    Tenure_Months INT,
    Phone_Service VARCHAR(20),
    Multiple_Lines VARCHAR(20),
    Internet_Service VARCHAR(20),
    Online_Security VARCHAR(20),
    Online_Backup VARCHAR(20),
    Device_Protection VARCHAR(20),
    Tech_Support VARCHAR(20),
    Streaming_TV VARCHAR(20),
    Streaming_Movies VARCHAR(20),
    Contract VARCHAR(20),
    Paperless_Billing VARCHAR(20),
    Payment_Method VARCHAR(50),
    Monthly_Charge FLOAT,
    Total_Charges FLOAT,
    Churn_Label VARCHAR(10),
    Churn_Value INT,
    Churn_Score INT,
    CLTV FLOAT,
    Churn_Reason TEXT
);


-- Load CSV file to SQL
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Telco_customer_churn.csv'
INTO TABLE telco_customer_churn
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"' 
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(CustomerID, Count, Country, State, City, Zip_Code, Lat_Long, Latitude, Longitude, Gender, Senior_Citizen, Partner, Dependents,
 Tenure_Months, Phone_Service, Multiple_Lines, Internet_Service, Online_Security, Online_Backup, Device_Protection, Tech_Support,
 Streaming_TV, Streaming_Movies, Contract, Paperless_Billing, Payment_Method, Monthly_Charge, Total_Charges, Churn_Label, Churn_Value, Churn_Score, CLTV, Churn_Reason);
 
 ALTER TABLE telco_customer_churn MODIFY COLUMN Total_Charges DECIMAL(15, 2);

 
 SHOW Warnings;
 
 SELECT COUNT(*) FROM telco_customer_churn;

SELECT * FROM telco_customer_churn LIMIT 10;

-- Missing values
SELECT 
    COUNT(*) - COUNT(CustomerID) AS Missing_CustomerID,
    COUNT(*) - COUNT(Count) AS Missing_Count,
    COUNT(*) - COUNT(Country) AS Missing_Country,
    COUNT(*) - COUNT(State) AS Missing_State,
    COUNT(*) - COUNT(City) AS Missing_City,
    COUNT(*) - COUNT(Zip_Code) AS Missing_Zip_Code,
    COUNT(*) - COUNT(Lat_Long) AS Missing_Lat_Long,
    COUNT(*) - COUNT(Latitude) AS Missing_Latitude,
    COUNT(*) - COUNT(Longitude) AS Missing_Longitude,
    COUNT(*) - COUNT(Gender) AS Missing_Gender,
    COUNT(*) - COUNT(Senior_Citizen) AS Missing_Senior_Citizen,
    COUNT(*) - COUNT(Partner) AS Missing_Partner,
    COUNT(*) - COUNT(Dependents) AS Missing_Dependents,
    COUNT(*) - COUNT(Tenure_Months) AS Missing_Tenure_Months,
    COUNT(*) - COUNT(Phone_Service) AS Missing_Phone_Service,
    COUNT(*) - COUNT(Multiple_Lines) AS Missing_Multiple_Lines,
    COUNT(*) - COUNT(Internet_Service) AS Missing_Internet_Service,
    COUNT(*) - COUNT(Online_Security) AS Missing_Online_Security,
    COUNT(*) - COUNT(Online_Backup) AS Missing_Online_Backup,
    COUNT(*) - COUNT(Device_Protection) AS Missing_Device_Protection,
    COUNT(*) - COUNT(Tech_Support) AS Missing_Tech_Support,
    COUNT(*) - COUNT(Streaming_TV) AS Missing_Streaming_TV,
    COUNT(*) - COUNT(Streaming_Movies) AS Missing_Streaming_Movies,
    COUNT(*) - COUNT(Contract) AS Missing_Contract,
    COUNT(*) - COUNT(Paperless_Billing) AS Missing_Paperless_Billing,
    COUNT(*) - COUNT(Payment_Method) AS Missing_Payment_Method,
    COUNT(*) - COUNT(Monthly_Charge) AS Missing_Monthly_Charge,
    COUNT(*) - COUNT(Total_Charges) AS Missing_Total_Charges,
    COUNT(*) - COUNT(Churn_Label) AS Missing_Churn_Label,
    COUNT(*) - COUNT(Churn_Value) AS Missing_Churn_Value,
    COUNT(*) - COUNT(Churn_Score) AS Missing_Churn_Score,
    COUNT(*) - COUNT(CLTV) AS Missing_CLTV,
    COUNT(*) - COUNT(Churn_Reason) AS Missing_Churn_Reason
FROM telco_customer_churn;

-- Despictive statistics
SELECT 
  AVG(Tenure_Months) AS avg_tenure, 
  MIN(Tenure_Months) AS min_tenure, 
  MAX(Tenure_Months) AS max_tenure, 
  AVG(Monthly_Charge) AS avg_monthly_charge,
  MIN(Monthly_Charge) AS min_monthly_charge,
  MAX(Monthly_Charge) AS max_monthly_charge
FROM telco_customer_churn;


SELECT DISTINCT Gender FROM telco_customer_churn;









