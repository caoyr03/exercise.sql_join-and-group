SELECT productName AS 'Product Name', quantityordered AS 'Total # Ordered', (quantityordered*priceEach) AS 'Total Sale' 
FROM orderdetails o LEFT JOIN products p ON o.productCode=p.productCode 
ORDER BY (quantityordered*priceEach) DESC