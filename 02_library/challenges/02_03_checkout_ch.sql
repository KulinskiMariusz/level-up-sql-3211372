-- Check out two books for Jack Vaan (jvaan@wisdompets.com).
-- Book 1: The Picture of Dorian Gray, 2855934983
-- Book 2: Great Expectations, 4043822646
-- The checkout date is August 25, 2022 and the 
-- due date is September 8, 2022.

INSERT INTO Loans (BookID, PatronID, LoanDate, DueDate)
VALUES 
( (SELECT Books.BookID FROM Books WHERE Barcode = 2855934983),
  (SELECT Patrons.PatronID FROM Patrons WHERE Patrons.Email = 'jvaan@wisdompets.com'),
  '2022-08-25',
  '2022-09-08'),
( (SELECT Books.BookID FROM Books WHERE Barcode = 4043822646),
  (SELECT Patrons.PatronID FROM Patrons WHERE Patrons.Email = 'jvaan@wisdompets.com'),
  '2022-08-25',
  '2022-09-08')

SELECT * FROM Loans WHERE PatronID = 50 ORDER BY LoanID DESC

DELETE FROM Loans WHERE LoanID = 2001 or LoanID = 2002