select CONCAT(lastName, ',', firstName) AS 'Sales Rep', count(o.orderNumber) as '# Orders', (quantityOrdered*priceEach) as 'Total Sales'
FROM customers c left join employees e on c.salesRepEmployeeNumber=e.employeeNumber 
left join orders o on c.customerNumber = o.customerNumber
LEFT JOIN orderdetails on orderdetails.orderNumber=o.orderNumber
WHERE e.jobTitle='Sales Rep'
GROUP BY CONCAT(lastName, ',', firstName)
order by (quantityOrdered*priceEach) DESC