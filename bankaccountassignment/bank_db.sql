DROP DATABASE IF EXISTS bank_db;
CREATE DATABASE bank_db;
USE bank_db;

CREATE TABLE accounts (
	ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    account_holder NVARCHAR(50) NOT NULL,
    balance DECIMAL(20,2) NOT NULL,
    fees DECIMAL(20,2) NOT NULL
);

CREATE TABLE transactions (
	ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    amount DECIMAL(20,2) NOT NULL,
    txn_type NVARCHAR(10) NOT NULL,
    account_id INT NOT NULL,
    FOREIGN KEY (account_id) REFERENCES accounts(`ID`)
);

INSERT accounts (account_holder, balance, fees) VALUES 
('Anna Bengel', 8888.00, 250.00),
('Chase Williams', 5444.00, 175.00),
('Jonelle Wehrman', 3333.00, 88.00),
('Steven Ross', 3322.00, 88.00);

INSERT transactions (amount, txn_type, account_id) VALUES
(500.00, 'Deposit', 3),
(-200.00, 'Withdrawl', 4),
(200.00, 'Deposit', 4),
(248.00, 'Deposit', 1);