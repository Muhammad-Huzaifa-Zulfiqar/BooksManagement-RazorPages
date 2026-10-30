-- Run this in SQL Server Management Studio (SSMS)
IF DB_ID('BooksDB') IS NULL
    CREATE DATABASE BooksDB;
GO

USE BooksDB;
GO

IF OBJECT_ID('dbo.books') IS NULL
CREATE TABLE [dbo].[books]
(
    [Id]          INT NOT NULL PRIMARY KEY IDENTITY,
    [title]       NVARCHAR(50) NULL,
    [author]      NVARCHAR(50) NULL,
    [description] NVARCHAR(50) NULL,
    [publisher]   NVARCHAR(50) NULL,
    [status]      NVARCHAR(50) NULL,
    [category]    NVARCHAR(50) NULL
);
GO

-- Optional sample data
INSERT INTO dbo.books (title, author, description, publisher, status, category) VALUES
('Clean Code', 'Robert C. Martin', 'A handbook of agile software craftsmanship', 'Prentice Hall', 'Available', 'Programming'),
('The Pragmatic Programmer', 'Andrew Hunt', 'Your journey to mastery', 'Addison-Wesley', 'Issued', 'Programming'),
('Atomic Habits', 'James Clear', 'Tiny changes, remarkable results', 'Avery', 'Available', 'Self-Help');
GO
