select p.ID, p.code, p.description, p.price, i.OrderNumber, i.CustomerName, i.id as 
InvoiceID, i.OrderDate, i.Total, l.Quantity from Product p, invoice i, lineitem l where p.id = l.productid;
select * from Product, Invoice, lineitem;
select p.ID, p.code, p.description, p.price, i.OrderNumber, i.CustomerName, i.id as 
InvoiceID, i.OrderDate, l.Quantity, (p.price * l.quantity) as TotalPrice from Product p, invoice i, lineitem l where p.id = l.productid;
select i.OrderNumber, i.CustomerName, i.OrderDate, p.Code, p.Description, l.Quantity, p.Price, (p.price * l.quantity) as TotalPrice 
	from Product p inner join LineItem l on p.id = l.productid inner join invoice i on l.invoiceid = i.id;