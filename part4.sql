SELECT productLine AS 'Product Line', SUM(quantityordered) AS '# Sold' 
FROM products 
LEFT JOIN orderdetails ON products.productCode=orderdetails.productCode 
GROUP BY productLine 
ORDER BY 2 DESC