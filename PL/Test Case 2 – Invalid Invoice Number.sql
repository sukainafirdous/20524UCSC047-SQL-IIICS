SELECT
COALESCE(
(SELECT '----- CUSTOMER BILL -----' || char(10) ||
'Invoice Number : ' || Invoice_ID || char(10) ||
'Customer Type : ' || Customer_Type || char(10) ||
'Product Line : ' || Product_Line || char(10) ||
'Quantity : ' || Quantity || char(10) ||
'Unit Price : ' || Unit_Price || char(10) ||
'Tax Amount : ' || Tax_Amount || char(10) ||
'Final Amount : ' || Total_Amount
FROM invoices WHERE Invoice_ID = 'INV999'),
'Error: Invoice Number Not Found.'
) AS Output;
EXECUTION
BEGIN
generate_bill('INV999');
END;
/
