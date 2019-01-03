CREATE TABLE Customers (
CustomerId smallint identity(1,1),
Name nvarchar(255),
Priority tinyint
);
GO
CREATE UNIQUE INDEX CustomerPK ON Customers(CustomerId);
GO
