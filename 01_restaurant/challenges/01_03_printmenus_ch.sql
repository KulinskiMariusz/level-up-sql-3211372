-- Create reports that will be used to make three menus.

-- Create a report with all the items sorted by price (lowest to highest).
-- Create a report showing appetizers and beverages.
-- Create a report with all items except beverages.

SELECT Type, Name, Price, Description
FROM Dishes
ORDER BY Price ASC

SELECT Type, Name, Price, Description
FROM Dishes
WHERE TYPE = 'Beverage' OR TYPE = 'Appetizer'
ORDER BY TYPE ASC

SELECT Type, Name, Price, Description
FROM Dishes
WHERE TYPE != 'Beverage'
ORDER BY TYPE ASC