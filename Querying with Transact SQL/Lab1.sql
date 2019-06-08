--challenge 1

SELECT * 
FROM SalesLT.Customer;SELECT Title, FirstName,MiddleName, Lastname, Suffix
FROM SalesLT.Customer;SELECT Salesperson, Title + ' ' + LastName AS CustomerName, Phone
FROM SalesLT.Customer;--challenge 2SELECT CAST(CustomerID AS varchar) + ': ' + CompanyName AS CustomerCompany
FROM SalesLT.Customer;SELECT CAST(SalesOrderNumber AS varchar(5)) + '  ' + '(' + CAST(RevisionNumber AS varchar(2)) + ')' AS SalesOrderID, 
CONVERT(nvarchar(30),OrderDate, 102) AS ANSIFormatDate
FROM SalesLT.SalesOrderHeader;--challenge 3SELECT FirstName + ' ' + ISNULL(MiddleName,'') + ' ' + Lastname + ISNULL(Suffix,'') AS CustomerContactName
FROM SalesLT.Customer; 


SELECT CustomerID, COALESCE(EmailAddress, Phone) AS PrimaryContact
FROM SalesLT.Customer;

SELECT SalesOrderID, OrderDate, 
CASE WHEN ShipDate IS NULL
	THEN 'Awaiting Shipment' 
	ELSE 'Shipped'
	END AS ShippingStatus
FROM SalesLT.SalesOrderHeader;