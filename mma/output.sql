select p.ID, p.code, p.description, p.price, i.OrderNumber, i.CustomerName, i.id as 
InvoiceID, i.OrderDate, i.Total, l.Quantity from Product p, invoice i, lineitem l where p.id = l.productid;
select * from Product, Invoice, lineitem;
select p.ID, p.code, p.description, p.price, i.OrderNumber, i.CustomerName, i.id as 
InvoiceID, i.OrderDate, l.Quantity, (p.price * l.quantity) as TotalPrice from Product p, invoice i, lineitem l where p.id = l.productid;