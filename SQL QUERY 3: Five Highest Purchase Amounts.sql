SELECT invoice_number,
customer_type,
product_line,
final_amount
FROM supermarket_sales
ORDER BY final_amount DESC
LIMIT 5;
