-- 1. SELECT: View all books and their genres
SELECT Title, Genre FROM Books;

-- 2. INSERT: Add a new borrower to the system
INSERT INTO Borrowers (Name, Email) 
VALUES ('Nicole Benigay', 'nicole@example.com');

-- 3. UPDATE: Change a book's title (using ID 1 as an example)
UPDATE Books 
SET Title = 'The Hobbit: Revised Edition' 
WHERE BookID = 1;

-- 4. DELETE: Remove a specific loan record
DELETE FROM Loans 
WHERE LoanID = 5;

-- 5. JOIN: Show which borrower took out which book
-- This combines three tables to give a clear report
SELECT 
    Borrowers.Name AS 'Borrower Name', 
    Books.Title AS 'Book Borrowed', 
    Loans.LoanDate
FROM Loans
JOIN Borrowers ON Loans.BorrowerID = Borrowers.BorrowerID
JOIN Books ON Loans.BookID = Books.BookID;

-- 6. SUBQUERY: Find all books written by 'J.K. Rowling' 
-- without knowing her AuthorID beforehand
SELECT Title 
FROM Books 
WHERE AuthorID = (SELECT AuthorID FROM Authors WHERE AuthorName = 'J.K. Rowling');