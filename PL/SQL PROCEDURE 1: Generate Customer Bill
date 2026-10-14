SET SERVEROUTPUT ON;

CREATE OR REPLACE PROCEDURE generate_bill
(
p_invoice_number IN VARCHAR2
)
IS
v_customer_type supermarket_sales.customer_type%TYPE;
v_product_line supermarket_sales.product_line%TYPE;
v_quantity supermarket_sales.quantity%TYPE;
v_unit_price supermarket_sales.unit_price%TYPE;
v_tax_amount supermarket_sales.tax_amount%TYPE;
v_final_amount supermarket_sales.final_amount%TYPE;
BEGIN

SELECT customer_type,
product_line,
quantity,
unit_price,
tax_amount,
final_amount
INTO v_customer_type,
v_product_line,

v_quantity,
v_unit_price,
v_tax_amount,
v_final_amount
FROM supermarket_sales
WHERE invoice_number = p_invoice_number;

DBMS_OUTPUT.PUT_LINE('----- CUSTOMER BILL -----');
DBMS_OUTPUT.PUT_LINE('Invoice Number : ' || p_invoice_number);
DBMS_OUTPUT.PUT_LINE('Customer Type : ' || v_customer_type);
DBMS_OUTPUT.PUT_LINE('Product Line : ' || v_product_line);
DBMS_OUTPUT.PUT_LINE('Quantity : ' || v_quantity);
DBMS_OUTPUT.PUT_LINE('Unit Price : ' || v_unit_price);

EXCEPTION
WHEN NO_DATA_FOUND THEN
DBMS_OUTPUT.PUT_LINE('Error: Invoice Number Not Found.');

WHEN TOO_MANY_ROWS THEN
DBMS_OUTPUT.PUT_LINE('Error: Multiple records found.');

WHEN OTHERS THEN
DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM);

END generate_bill;
/

EXECUTION
BEGIN
generate_bill('INV001');
END;
/
