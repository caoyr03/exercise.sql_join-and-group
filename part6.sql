SELECT extract(MONTH FROM paymentdate) as Month,extract(year from paymentdate) as Year, sum(amount) AS 'Payments Received'
FROM payments
GROUP BY 1,2