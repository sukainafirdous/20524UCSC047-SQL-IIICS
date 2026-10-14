SELECT customer_type,
ROUND(AVG(final_amount),2) AS average_purchase_amount
FROM supermarket_sales
GROUP BY customer_type
ORDER BY customer_type;
