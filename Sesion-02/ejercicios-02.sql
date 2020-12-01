#1
SELECT employeeNumber, lastName, firstName
FROM employees
WHERE firstName LIKE 'A%';
#2
SELECT employeeNumber, lastName, firstName
FROM employees
WHERE lastName LIKE '%on';
#3
SELECT employeeNumber,lastname,firstname
FROM employees WHERE firstname LIKE '%on%';
#4
SELECT employeeNumber, lastName, firstName
FROM employees
WHERE firstName LIKE 'G_____';
#5
SELECT employeeNumber, lastName, firstName
FROM employees
WHERE firstName NOT LIKE 'B%';
#6
SELECT productCode, productName
FROM products
WHERE productCode LIKE '%_20%';
#7
SELECT orderNumber, SUM(priceEach)
FROM orderdetails
GROUP BY orderNumber;
#8
SELECT YEAR(orderDate), count(*)
FROM orders
GROUP BY YEAR(orderDate);
#9
SELECT lastName,firstName
FROM employees
WHERE officeCode IN (
		SELECT officeCode
		FROM offices
		WHERE country = 'USA');
#10
SELECT customerNumber, checkNumber, amount
FROM payments
ORDER BY amount DESC
LIMIT 1;
#11
SELECT customerNumber, checkNumber, amount
FROM payments
WHERE amount > (
    SELECT avg(amount)
    FROM payments
    )
GROUP BY customerNumber, checkNumber;
#12
SELECT customerName
FROM customers
WHERE customerNumber NOT IN
   (SELECT customerNumber
   FROM orders);
#13
SELECT max(quantityOrdered) AS max, min(quantityOrdered) AS min, avg(quantityOrdered) AS promedio
FROM orderdetails;
#14
SELECT (
	  SELECT state
	  FROM customers
	  WHERE customerNumber = o.customerNumber) AS state, count(*) AS num_orders
FROM orders AS o
GROUP BY state;











