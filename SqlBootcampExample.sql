DROP DATABASE IF EXISTS SqlBootcampExample;
CREATE DATABASE SqlBootcampExample;
use SqlBootcampExample;

CREATE TABLE Customer (
    ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    Name NVARCHAR(50) NOT NULL,
    City NVARCHAR(50) NOT NULL,
    State NVARCHAR(2) NOT NULL,
    Sales DECIMAL(20, 2) NOT NULL,
    Active BIT NOT NULL
);

Insert Customer (Name, City, State, Sales, Active) Values ('Acme, inc.','Jersey City','NJ',143818.91,1);
Insert Customer (Name, City, State, Sales, Active) Values ('Widget Corp','Seattle','WA',978658.29,1);
Insert Customer (Name, City, State, Sales, Active) Values ('123 Warehousing','Los Angeles','CA',775037.10,1);
Insert Customer (Name, City, State, Sales, Active) Values ('Demo Company','Columbus','OH',746475.41,1);
Insert Customer (Name, City, State, Sales, Active) Values ('Smith and Co.','Honolulu','HI',360465.90,1);
Insert Customer (Name, City, State, Sales, Active) Values ('Foo Bars','Fresno','CA',399128.57,1);
Insert Customer (Name, City, State, Sales, Active) Values ('ABC Telecom','Birmingham','AL',311490.83,1);
Insert Customer (Name, City, State, Sales, Active) Values ('Fake Brothers','Stockton','CA',312261.91,1);
Insert Customer (Name, City, State, Sales, Active) Values ('QWERTY Logistics','Lubbock','TX',172269.05,1);
Insert Customer (Name, City, State, Sales, Active) Values ('Demo, Inc.','Las Vegas','NV',695515.57,1);
Insert into Customer (Name, City, State, Sales, Active) Values 
('Inconspicuous Company','Cincinnati','OH',999999999999999999.99,0),
('Unassuming Inc','Lexington','KY',3.50,1);
