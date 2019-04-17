DROP DATABASE IF EXISTS SqlBootcampExample;
CREATE DATABASE SqlBootcampExample;
use SqlBootcampExample;

CREATE TABLE State (
	Code NVARCHAR(2) NOT NULL PRIMARY KEY,
    StateName NVARCHAR(50) NOT NULL
);

CREATE TABLE Customer (
    ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    CompanyName NVARCHAR(50) NOT NULL,
    City NVARCHAR(50) NOT NULL,
    StateCode NVARCHAR(2) NOT NULL,
    Sales DECIMAL(20, 2) NOT NULL,
    Active BOOLEAN NOT NULL,
    FOREIGN KEY (StateCode) REFERENCES State(`Code`)
);

INSERT State (Code, StateName) Values ('AL', 'Alabama');
INSERT State (Code, StateName) Values ('CA', 'California');
INSERT State (Code, StateName) Values ('HI', 'Hawaii');
INSERT State (Code, StateName) Values ('NJ', 'New Jersey');
INSERT State (Code, StateName) Values ('NV', 'Nevada');
INSERT State (Code, StateName) Values ('OH', 'Ohio');
INSERT State (Code, StateName) Values ('TX', 'Texas');
INSERT State (Code, StateName) Values ('WA', 'Washington');
INSERT State (Code, StateName) Values ('KY', 'Kentucky');

Insert Customer (CompanyName, City, StateCode, Sales, Active) Values ('Acme, inc.','Jersey City','NJ',143818.91,1);
Insert Customer (CompanyName, City, StateCode, Sales, Active) Values ('Widget Corp','Seattle','WA',978658.29,1);
Insert Customer (CompanyName, City, StateCode, Sales, Active) Values ('123 Warehousing','Los Angeles','CA',775037.10,1);
Insert Customer (CompanyName, City, StateCode, Sales, Active) Values ('Demo Company','Columbus','OH',746475.41,1);
Insert Customer (CompanyName, City, StateCode, Sales, Active) Values ('Smith and Co.','Honolulu','HI',360465.90,1);
Insert Customer (CompanyName, City, StateCode, Sales, Active) Values ('Foo Bars','Fresno','CA',399128.57,1);
Insert Customer (CompanyName, City, StateCode, Sales, Active) Values ('ABC Telecom','Birmingham','AL',311490.83,1);
Insert Customer (CompanyName, City, StateCode, Sales, Active) Values ('Fake Brothers','Stockton','CA',312261.91,1);
Insert Customer (CompanyName, City, StateCode, Sales, Active) Values ('QWERTY Logistics','Lubbock','TX',172269.05,1);
Insert Customer (CompanyName, City, StateCode, Sales, Active) Values ('Demo, Inc.','Las Vegas','NV',695515.57,1);
Insert Customer (CompanyName, City, StateCode, Sales, Active) Values ('Inconspicuous Company','Cincinnati','OH',999999999999999999.99,0);
Insert Customer (CompanyName, City, StateCode, Sales, Active) Values ('Unassuming Inc','Lexington','KY',3.50,1);



