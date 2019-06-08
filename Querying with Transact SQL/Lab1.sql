--challenge 1

SELECT * 
FROM SalesLT.Customer;
FROM SalesLT.Customer;
FROM SalesLT.Customer;
FROM SalesLT.Customer;
CONVERT(nvarchar(30),OrderDate, 102) AS ANSIFormatDate
FROM SalesLT.SalesOrderHeader;
FROM SalesLT.Customer; 


SELECT CustomerID, COALESCE(EmailAddress, Phone) AS PrimaryContact
FROM SalesLT.Customer;

SELECT SalesOrderID, OrderDate, 
CASE WHEN ShipDate IS NULL
	THEN 'Awaiting Shipment' 
	ELSE 'Shipped'
	END AS ShippingStatus
FROM SalesLT.SalesOrderHeader;