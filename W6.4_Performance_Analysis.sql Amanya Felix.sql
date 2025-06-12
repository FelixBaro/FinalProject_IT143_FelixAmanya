USE AdventureWorks2022;
GO

-- Query 1: Search by MiddleName (Triggers Missing Index)
SELECT FirstName, LastName, MiddleName
FROM Person.Person
WHERE MiddleName = 'A';
GO

-- Create index for Query 1
CREATE NONCLUSTERED INDEX IX_Person_MiddleName
ON Person.Person (MiddleName);
GO

-- Re-run Query 1 after index
SELECT FirstName, LastName, MiddleName
FROM Person.Person
WHERE MiddleName = 'A';
GO

-- Query 2: Search by EmailAddress (Triggers Missing Index)
SELECT BusinessEntityID, EmailAddress
FROM Person.EmailAddress
WHERE EmailAddress LIKE 'john%';
GO

-- Create index for Query 2
CREATE NONCLUSTERED INDEX IX_EmailAddress_Email
ON Person.EmailAddress (EmailAddress);
GO

-- Re-run Query 2 after index
SELECT BusinessEntityID, EmailAddress
FROM Person.EmailAddress
WHERE EmailAddress LIKE 'john%';
GO
