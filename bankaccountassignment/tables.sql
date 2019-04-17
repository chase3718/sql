SELECT * FROM bank_db.accounts ;
SELECT * FROM bank_db.transactions;
SELECT * FROM bank_db.accounts JOIN bank_db.transactions WHERE accounts.ID = transactions.account_id;
SELECT AVG(balance) FROM accounts;
SELECT *, SUM(amount) FROM transactions;
