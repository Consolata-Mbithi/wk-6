--Question 1 
  --Using an INNER JOIN to combine the employees table with the offices table
USE salesDB;

SELECT 
    firstName, 
    lastName, 
    email, 
    officeCode
FROM employees 
INNER JOIN offices  
    ON officeCode = officeCode;

--Question 2
--Using a LEFT JOIN to combine the products table with the productlines table using the productLine column.

-- First, make sure productlines table exists
CREATE TABLE productlines (
    id INT PRIMARY KEY AUTO_INCREMENT,
    productLine VARCHAR(50) NOT NULL UNIQUE
);

-- Add productLine column to products table
ALTER TABLE products
ADD COLUMN productLine VARCHAR(50);

-- Add foreign key constraint
ALTER TABLE products
ADD CONSTRAINT fk_product_productline
FOREIGN KEY (productLine) REFERENCES productlines(productLine);

-- Query with LEFT JOIN
SELECT 
    productName, 
    productVendor, 
    productLine
FROM products 
LEFT JOIN productlines 
    ON productLine = productLine;

--Question 3
ALTER TABLE customers
ADD COLUMN dateOfBirth DATE,
ADD COLUMN loyaltyPoints INT DEFAULT 0;
