CREATE DATABASE banking_system;
USE banking_system;
show tables;

CREATE TABLE customers (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_name VARCHAR(100) NOT NULL,
    city VARCHAR(50),
    phone VARCHAR(15),
    account_type VARCHAR(30)
);

INSERT INTO customers
(customer_name, city, phone, account_type)
VALUES
('Arun Prakash', 'Chennai', '9876543240', 'Savings'),
('Bhavya R', 'Bangalore', '9876543241', 'Current'),
('Chandru K', 'Mumbai', '9876543242', 'Savings'),
('Dharani S', 'Coimbatore', '9876543243', 'Savings'),
('Elango M', 'Madurai', '9876543244', 'Current'),
('Fathima A', 'Kochi', '9876543245', 'Savings'),
('Ganesh Kumar', 'Hyderabad', '9876543246', 'Current'),
('Hema L', 'Kolkata', '9876543247', 'Savings'),
('Imran Khan', 'Delhi', '9876543248', 'Savings'),
('Jaya Devi', 'Pune', '9876543249', 'Current'),
('Kavin Raj', 'Chennai', '9876543250', 'Savings'),
('Lavanya S', 'Bangalore', '9876543251', 'Savings'),
('Madhan R', 'Mumbai', '9876543252', 'Current'),
('Nisha P', 'Salem', '9876543253', 'Savings'),
('Omkar V', 'Pune', '9876543254', 'Current'),
('Pavithra K', 'Madurai', '9876543255', 'Savings'),
('Qasim Ali', 'Hyderabad', '9876543256', 'Savings'),
('Revathi M', 'Chennai', '9876543257', 'Current'),
('Sathish Kumar', 'Coimbatore', '9876543258', 'Savings'),
('Tharani R', 'Kochi', '9876543259', 'Savings'),
('Uday K', 'Delhi', '9876543260', 'Current'),
('Varun S', 'Kolkata', '9876543261', 'Savings'),
('Yamini P', 'Chennai', '9876543262', 'Savings'),
('Zahir Ahmed', 'Mumbai', '9876543263', 'Current'),
('Abinaya R', 'Bangalore', '9876543264', 'Savings'),
('Bala Murugan', 'Madurai', '9876543265', 'Current'),
('Chitra Devi', 'Salem', '9876543266', 'Savings'),
('Dhanush K', 'Hyderabad', '9876543267', 'Savings'),
('Ezhil R', 'Kochi', '9876543268', 'Current'),
('Farzana S', 'Delhi', '9876543269', 'Savings'),
('Girish Kumar', 'Chennai', '9876543270', 'Savings'),
('Harinath M', 'Coimbatore', '9876543271', 'Current'),
('Ishwar R', 'Pune', '9876543272', 'Savings'),
('Janani K', 'Bangalore', '9876543273', 'Savings'),
('Kishore S', 'Mumbai', '9876543274', 'Current'),
('Leela Devi', 'Madurai', '9876543275', 'Savings'),
('Mugilan R', 'Chennai', '9876543276', 'Current'),
('Nithya P', 'Kochi', '9876543277', 'Savings'),
('Praveen Kumar', 'Hyderabad', '9876543278', 'Savings'),
('Ranjith S', 'Kolkata', '9876543279', 'Current'),
('Saranya R', 'Delhi', '9876543280', 'Savings'),
('Tamilselvan K', 'Salem', '9876543281', 'Savings'),
('Uma Devi', 'Chennai', '9876543282', 'Current'),
('Vignesh R', 'Bangalore', '9876543283', 'Savings'),
('Yogesh Kumar', 'Mumbai', '9876543284', 'Current'),
('Zoya Khan', 'Pune', '9876543285', 'Savings'),
('Aarthi S', 'Madurai', '9876543286', 'Savings'),
('Bharath K', 'Coimbatore', '9876543287', 'Current'),
('Catherine R', 'Kochi', '9876543288', 'Savings'),
('Dinesh Kumar', 'Hyderabad', '9876543289', 'Savings'),
('Eshwaran M', 'Chennai', '9876543290', 'Current'),
('Feroz A', 'Delhi', '9876543291', 'Savings'),
('Gowtham R', 'Kolkata', '9876543292', 'Savings'),
('Hema Priya', 'Bangalore', '9876543293', 'Current'),
('Irfan S', 'Mumbai', '9876543294', 'Savings'),
('Jeeva K', 'Salem', '9876543295', 'Current'),
('Kavitha R', 'Chennai', '9876543296', 'Savings'),
('Lokesh M', 'Coimbatore', '9876543297', 'Savings'),
('Monisha P', 'Madurai', '9876543298', 'Current'),
('Naveena S', 'Kochi', '9876543299', 'Savings'),
('Prakash R', 'Hyderabad', '9876543300', 'Savings'),
('Rohini K', 'Delhi', '9876543301', 'Current'),
('Sanjana M', 'Pune', '9876543302', 'Savings'),
('Tarun Kumar', 'Chennai', '9876543303', 'Savings'),
('Usha R', 'Bangalore', '9876543304', 'Current'),
('Vasanth K', 'Mumbai', '9876543305', 'Savings'),
('Waseem A', 'Kolkata', '9876543306', 'Savings'),
('Yashika S', 'Madurai', '9876543307', 'Current'),
('Zubin R', 'Kochi', '9876543308', 'Savings'),
('Anand Kumar', 'Salem', '9876543309', 'Savings'),
('Bhanu Priya', 'Chennai', '9876543310', 'Current'),
('Charan S', 'Hyderabad', '9876543311', 'Savings');

SELECT * FROM customers;

-- TABLE 2

CREATE TABLE transactions (
    transaction_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT,
    transaction_type VARCHAR(30),
    amount DECIMAL(10,2),
    transaction_date DATE,
    payment_mode VARCHAR(30),
    
    FOREIGN KEY (customer_id)
    REFERENCES customers(customer_id)
);

INSERT INTO transactions
(customer_id, transaction_type, amount, transaction_date, payment_mode)
VALUES
(31, 'Withdrawal', 4500.00, '2026-03-28', 'ATM'),
(32, 'Deposit', 36000.00, '2026-04-01', 'UPI'),
(33, 'Deposit', 52000.00, '2026-04-03', 'Bank Transfer'),
(34, 'Withdrawal', 2500.00, '2026-04-05', 'ATM'),
(35, 'Deposit', 21000.00, '2026-04-07', 'Cash'),
(36, 'Withdrawal', 6000.00, '2026-04-09', 'UPI'),
(37, 'Deposit', 47000.00, '2026-04-11', 'Bank Transfer'),
(38, 'Withdrawal', 3500.00, '2026-04-13', 'ATM'),
(39, 'Deposit', 29000.00, '2026-04-15', 'UPI'),
(40, 'Deposit', 58000.00, '2026-04-18', 'Cash'),
(41, 'Withdrawal', 7000.00, '2026-04-20', 'ATM'),
(42, 'Deposit', 33000.00, '2026-04-22', 'Bank Transfer'),
(43, 'Withdrawal', 4000.00, '2026-04-24', 'UPI'),
(44, 'Deposit', 24000.00, '2026-04-26', 'Cash'),
(45, 'Deposit', 61000.00, '2026-04-28', 'Bank Transfer'),
(46, 'Withdrawal', 5500.00, '2026-05-01', 'ATM'),
(47, 'Deposit', 37000.00, '2026-05-03', 'UPI'),
(48, 'Withdrawal', 3000.00, '2026-05-05', 'ATM'),
(49, 'Deposit', 44000.00, '2026-05-07', 'Bank Transfer'),
(50, 'Deposit', 26000.00, '2026-05-09', 'Cash'),
(51, 'Withdrawal', 6500.00, '2026-05-11', 'ATM'),
(52, 'Deposit', 31000.00, '2026-05-13', 'UPI'),
(53, 'Deposit', 54000.00, '2026-05-15', 'Bank Transfer'),
(54, 'Withdrawal', 4500.00, '2026-05-17', 'ATM'),
(55, 'Deposit', 23000.00, '2026-05-19', 'Cash'),
(56, 'Withdrawal', 3500.00, '2026-05-21', 'UPI'),
(57, 'Deposit', 49000.00, '2026-05-23', 'Bank Transfer'),
(58, 'Withdrawal', 5000.00, '2026-05-25', 'ATM'),
(59, 'Deposit', 27000.00, '2026-05-27', 'Cash'),
(60, 'Deposit', 63000.00, '2026-05-29', 'UPI'),
(61, 'Withdrawal', 7500.00, '2026-06-01', 'ATM'),
(62, 'Deposit', 35000.00, '2026-06-03', 'Bank Transfer'),
(63, 'Deposit', 22000.00, '2026-06-05', 'Cash'),
(64, 'Withdrawal', 4000.00, '2026-06-07', 'UPI'),
(65, 'Deposit', 57000.00, '2026-06-09', 'Bank Transfer'),
(66, 'Withdrawal', 6000.00, '2026-06-11', 'ATM'),
(67, 'Deposit', 30000.00, '2026-06-13', 'UPI'),
(68, 'Deposit', 46000.00, '2026-06-15', 'Cash'),
(69, 'Withdrawal', 2500.00, '2026-06-17', 'ATM'),
(70, 'Deposit', 39000.00, '2026-06-19', 'Bank Transfer'),
(71, 'Withdrawal', 5500.00, '2026-06-21', 'UPI'),
(72, 'Deposit', 28000.00, '2026-06-23', 'Cash'),
(73, 'Deposit', 51000.00, '2026-06-25', 'Bank Transfer'),
(74, 'Withdrawal', 4500.00, '2026-06-27', 'ATM'),
(75, 'Deposit', 34000.00, '2026-06-29', 'UPI'),
(76, 'Withdrawal', 3000.00, '2026-07-01', 'ATM'),
(77, 'Deposit', 43000.00, '2026-07-03', 'Bank Transfer'),
(78, 'Deposit', 25000.00, '2026-07-05', 'Cash'),
(79, 'Withdrawal', 7000.00, '2026-07-07', 'ATM'),
(80, 'Deposit', 56000.00, '2026-07-09', 'UPI'),
(81, 'Withdrawal', 3500.00, '2026-07-11', 'ATM'),
(82, 'Deposit', 32000.00, '2026-07-13', 'Bank Transfer'),
(83, 'Deposit', 48000.00, '2026-07-15', 'Cash'),
(84, 'Withdrawal', 5000.00, '2026-07-17', 'UPI'),
(85, 'Deposit', 29000.00, '2026-07-19', 'Bank Transfer'),
(86, 'Withdrawal', 4000.00, '2026-07-21', 'ATM'),
(87, 'Deposit', 62000.00, '2026-07-23', 'UPI'),
(88, 'Deposit', 36000.00, '2026-07-25', 'Cash'),
(89, 'Withdrawal', 6500.00, '2026-07-27', 'ATM'),
(90, 'Deposit', 41000.00, '2026-07-29', 'Bank Transfer'),
(91, 'Withdrawal', 3000.00, '2026-08-01', 'UPI'),
(92, 'Deposit', 53000.00, '2026-08-03', 'Cash'),
(93, 'Deposit', 27000.00, '2026-08-05', 'Bank Transfer'),
(94, 'Withdrawal', 5500.00, '2026-08-07', 'ATM'),
(95, 'Deposit', 38000.00, '2026-08-09', 'UPI'),
(96, 'Withdrawal', 4500.00, '2026-08-11', 'ATM'),
(97, 'Deposit', 59000.00, '2026-08-13', 'Bank Transfer'),
(98, 'Deposit', 31000.00, '2026-08-15', 'Cash'),
(99, 'Withdrawal', 6000.00, '2026-08-17', 'UPI'),
(100, 'Deposit', 45000.00, '2026-08-19', 'Bank Transfer');

SELECT * FROM transactions;
SELECT * FROM customers;

# customer & transactions

SELECT count(*) AS total_customers
FROM customers;

SELECT count(*) AS total_transactions
FROM transactions;

SELECT 
    MIN(customer_id) AS min_customer_id,
    MAX(customer_id) AS max_customer_id,
    COUNT(DISTINCT customer_id) AS unique_customers
FROM customers;

SELECT COUNT(*) AS unmatched_transactions
FROM transactions t
LEFT JOIN customers c
    ON t.customer_id = c.customer_id
WHERE c.customer_id IS NULL;

# Query 1 city-wise customer distribution
# Identify how many customers belong to each city in the banking system.

SELECT city, COUNT(*) AS customers_count
FROM customers
GROUP BY city
ORDER BY customers_count DESC;

# Query 2 Account Type-Wise Customers Count
# Identify how many customers are there under each account type.

SELECT account_type,
       COUNT(*) AS customers_count
FROM customers
GROUP BY account_type
ORDER BY customers_count DESC;

# Query 3 Find Customers from a Specific City
# Retrieve the details of customers who are from Chennai.

SELECT *
FROM customers
WHERE city = 'Chennai';

# Query 4 Customers With Specific Account Types
# Retrieve the customers who have either a Savings or Current account.
# IN checks whether the column value matches any value in the given list.

SELECT * FROM customers
WHERE "account_type" IN ('Savings', 'Current');

# Query 5 Find Customers Whose Names Start With a Specific Letter
# Identify customers whose names start with the letter "A".

SELECT customer_id, customer_name
FROM customers
WHERE customer_name LIKE 'A%';

# Query 6 High Value_Transactions
# Identify transactions where the transaction amount is greater than ₹50,000.

SELECT * FROM transactions
WHERE amount > 50000;

# Query 7 City-wise Customer Name Analysis
# Display the city and the number of customers from each city, showing only cities with more than 5 customers, and arrange the result from highest to lowest customer count.

SELECT city,
       COUNT(*) AS customer_count
FROM customers
GROUP BY city
HAVING COUNT(*) > 5
ORDER BY customer_count DESC;

# Query 8 
# Find the total transaction amount for each customer and display only customers whose total transactions are above ₹50,000.

SELECT customer_id,
       SUM(amount) AS total_transaction
FROM transactions
GROUP BY customer_id
HAVING SUM(amount) > 50000
ORDER BY total_transaction DESC;

# Query 9 Customer Transaction Analysis
# Find each customer’s total transaction amount, along with their customer name, and show the customers with the highest total amount first.

SELECT c.customer_id,
       c.customer_name,
       SUM(t.amount) AS total_transaction
FROM customers c
JOIN transactions t
    ON c.customer_id = t.customer_id
GROUP BY c.customer_id, c.customer_name
ORDER BY total_transaction DESC;

# Query 10 Customer Transaction Details
# Find the customer name, city, transaction type, and transaction amount for each transaction.

SELECT c.customer_name,
       c.city,
       t.transaction_type,
       t.amount
FROM customers c
JOIN transactions t
    ON c.customer_id = t.customer_id;
    
# Query 11 JOIN + GROUP BY + HAVING
# Find the total transaction amount for each customer by joining the customers and transactions tables. Display only customers whose total transaction amount is greater than ₹50,000.

SELECT c.customer_id, c.customer_name,
       SUM(t.amount) AS total_amount
FROM customers c
JOIN transactions t
    ON c.customer_id = t.customer_id
GROUP BY c.customer_id, c.customer_name
HAVING SUM(t.amount) > 50000
ORDER BY total_amount DESC;

# Query 12 Left Join
# Display all customers along with their transaction details, including customers who have not made any transactions.

SELECT c.customer_id, c.customer_name, c.city, t.transaction_type, t.amount
FROM customers c
LEFT JOIN transactions t
    ON c.customer_id = t.customer_id;
    
# Query 13 
# Find customers who have an account but have never made a transaction.

SELECT 
    c.customer_id, c.customer_name, c.account_type
FROM customers c
LEFT JOIN transactions t ON c.customer_id = t.customer_id
WHERE t.customer_id IS NULL;

# Query 14 RIGHT JOIN
# Display all transactions along with the corresponding customer details, including transactions that do not have a matching customer record.

SELECT c.customer_id, c.customer_name, t.transaction_id
FROM customers c
RIGHT JOIN transactions t ON c.customer_id = t.customer_id;

# Query 15 
# Find all customers who have made at least one transaction, and display their customer name and total transaction amount.

SELECT c.customer_name, SUM(t.amount) AS total_transaction_amount
FROM customers c
INNER JOIN transactions t ON c.customer_id = t.customer_id
GROUP BY c.customer_id, c.customer_name;

# Query 16
# Identify the top 3 customers based on their total transaction amount.

SELECT c.customer_name, SUM(t.amount) AS total_amount,
    RANK() OVER (ORDER BY SUM(t.amount) DESC) AS transaction_rank
FROM customers c
INNER JOIN transactions t
    ON c.customer_id = t.customer_id
GROUP BY c.customer_id, c.customer_name;

# Query 17 LAG() — Previous value
# Display each transaction amount along with the previous transaction amount for the same customer.

SELECT customer_id, transaction_id, amount,
    LAG(amount) OVER (
        PARTITION BY customer_id
        ORDER BY transaction_id
    ) AS previous_amount
FROM transactions;

# Query 18 COALESCE → Handles NULL values.
# Why use? To replace NULL with a suitable/default value.
# Display all customers along with their transaction amount. If a customer has no transaction amount, display 0 instead of NULL.

SELECT  c.customer_name,
COALESCE(t.amount, 0) AS transactions_amount
FROM customers c
LEFT JOIN transactions t ON c.customer_id = t.customer_id;

# Query 19 using coalesce()function
# Display each customer’s phone number. If a customer has no phone number, display 'Not Available' instead of NULL.

SELECT c.customer_name,
COALESCE(phone, "not_available") AS phone_number
FROM customers c;

# Query 20 using lead()function
# Display each customer’s transaction amount along with their next transaction amount.

SELECT customer_id, transaction_id, amount,
    LEAD(amount) OVER (
        PARTITION BY customer_id
        ORDER BY transaction_id
    ) AS next_amount
FROM transactions;

# Query 21 using CASE WHEN() FUNCTIONS
# Classify customers based on their account type. Display Personal Account for Savings accounts, Business Account for Current accounts, otherwise display Other Account.

SELECT customer_id, customer_name, account_type,
    CASE
        WHEN account_type = 'Savings' THEN 'Personal Account'
        WHEN account_type = 'Current' THEN 'Business Account'
        ELSE 'Other Account'
    END AS account_category
FROM customers;

# Query 22 using COUNT(DISTINCT)
# Find the number of unique customers who have made transactions.

SELECT COUNT(DISTINCT customer_id) AS unique_customer
FROM transactions;

# Query 23 using ROUND(NUMBER, DECIMAL_PLACE)
# Find the average transaction amount for each customer and round the result to 2 decimal places.

SELECT customer_id,
    ROUND(AVG(amount), 2) AS average_transaction_amount
FROM transactions
GROUP BY customer_id;

# Query 24 using DATEDIFF() Functions &  use lead also to get the next transactions date
# Find the number of days between each transaction date and the next transaction date for the same customer.

SELECT customer_id, transaction_id, transaction_date,
    LEAD(transaction_date) OVER (
        PARTITION BY customer_id
        ORDER BY transaction_date
    ) AS next_transaction_date,
    DATEDIFF(
        LEAD(transaction_date) OVER (
            PARTITION BY customer_id
            ORDER BY transaction_date
        ),
        transaction_date
    ) AS days_until_next_transaction
FROM transactions;

# Query 25 DATEDIFF()LEAD()COALESCE()
# For each transaction, find the number of days until the customer's next transaction. If there is no next transaction, display 0 instead of NULL.

SELECT customer_id, transaction_id, transaction_date,
    LEAD(transaction_date) OVER (
        PARTITION BY customer_id
        ORDER BY transaction_date
    ) AS next_transaction_date,
    COALESCE(
        DATEDIFF(
            LEAD(transaction_date) OVER (
                PARTITION BY customer_id
                ORDER BY transaction_date
            ), transaction_date
        ), 0
    ) AS days_until_next_transaction
FROM transactions;

# Query 26 using DATE_FORMATE & DATEDIFF() FUNCTIONS
# For each transaction, show the transaction month and calculate how many days have passed since the transaction date.

SELECT customer_id, transaction_id, transaction_date,
    DATE_FORMAT(transaction_date, '%M %Y') AS transaction_month,
    DATEDIFF(CURDATE(), transaction_date) AS days_since_transaction
FROM transactions;

# Query 27 using TIMESTAMPDIFF(DATE,DAY,UNITS,SECONDS,HOURS,MONTH,YEAR)FUNCTIONS
# Find how many days have passed since each transaction.

SELECT customer_id, transaction_id, transaction_date,
    TIMESTAMPDIFF(DAY, transaction_date,
        CURDATE()
    ) AS days_since_transaction
FROM transactions;

# Query 28 using GROUP CONCAT()FUNCTIONS
# For each customer, display all the transaction types they have performed in a single row.

SELECT customer_id,
    GROUP_CONCAT(transaction_type) AS transaction_types
FROM transactions
GROUP BY customer_id;

# Query 29 using TRIM()FUNCTIONS IT REMOVES THE UNWANTED SPACES IN A DATAS
# Display customer names after removing unwanted spaces from the beginning and end of the customer name.

SELECT customer_id, customer_name,
    TRIM(customer_name) AS cleaned_customer_name
FROM customers;

# Query 30 using REPLACE()FUNCTIONS
# Display customer city names by replacing Madras with Chennai.

SELECT customer_id, customer_name, city,
    REPLACE(city, 'Chennai', 'KERALA') AS updated_city
FROM customers;

# Query 31 using LENGTH()FUNCTIONS
# Display each customer's name and the length of their name.

SELECT
    customer_id,
    customer_name,
    PHONE,
    LENGTH(customer_name) AS name_length
FROM customers;

# Query 32 using SUBSTRING()FUNCTIONS
# Display the first 3 characters of each customer name.

SELECT customer_id, customer_name,
    SUBSTRING(customer_name, 1, 3) AS first_three_characters
FROM customers;

# Query 33 using CROSS JOIN
# Display every customer with every available transaction type in the database.

SELECT c.customer_name, t.transaction_type
FROM customers c
CROSS JOIN (
    SELECT DISTINCT transaction_type
    FROM transactions
) t;

# Query 34 using SELF JOIN OR INNER JOIN
# Find customers who live in the same city and display their names as customer pairs.

SELECT c1.customer_name AS customer_1, c2.customer_name AS customer_2, c1.city
FROM customers c1
INNER JOIN customers c2 ON c1.city = c2.city
   AND c1.customer_id < c2.customer_id;
   
# Query 35 using DISTINCT CLAUSE
# In a banking system, we can find the different types of accounts available.

SELECT DISTINCT account_type
FROM customers;

# Query 36 using WITH-CTE(common table expression)CLAUSE
# We can find customers who have made more than 5 transactions.

WITH customer_transactions AS (
    SELECT customer_id, COUNT(*) AS transaction_count
    FROM transactions
    GROUP BY customer_id
)
SELECT * FROM customer_transactions
WHERE transaction_count > 0;

WITH customer_transactions AS (
    SELECT 
        customer_id,
        COUNT(*) AS transaction_count
    FROM transactions
    GROUP BY customer_id
)
SELECT *
FROM customer_transactions;

# Query 37 using UNION ALL
# Find all customer IDs from both customers and transactions.

SELECT customer_id
FROM customers UNION ALL
      SELECT customer_id
FROM transactions;


