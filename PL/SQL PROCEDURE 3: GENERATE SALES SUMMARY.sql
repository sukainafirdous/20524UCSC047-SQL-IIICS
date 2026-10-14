CREATE OR REPLACE PROCEDURE sales_summary
IS
BEGIN

DBMS_OUTPUT.PUT_LINE(
'----- PRODUCT LINE SALES SUMMARY -----'
);

FOR r IN
(
SELECT product_line,
COUNT(*) AS total_invoices,
SUM(final_amount) AS total_sales
FROM supermarket_sales
GROUP BY product_line
ORDER BY product_line
)
LOOP

DBMS_OUTPUT.PUT_LINE(
'Product Line: ' || r.product_line ||

' | Invoices: ' || r.total_invoices ||
' | Total Sales: ' || r.total_sales
);

END LOOP;

EXCEPTION
WHEN OTHERS THEN
DBMS_OUTPUT.PUT_LINE(
'Error: ' || SQLERRM
);

END sales_summary;
/
EXECUTION
BEGIN
sales_summary;
END;
/
