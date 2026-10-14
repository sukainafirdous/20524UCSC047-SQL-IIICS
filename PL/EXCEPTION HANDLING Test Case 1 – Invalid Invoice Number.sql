EXECUTION
CREATE TABLE invoices (
Invoice_ID TEXT PRIMARY KEY,
Customer_Type TEXT,
Product_Line TEXT,
Quantity INTEGER,
Unit_Price REAL,
Tax_Amount REAL,

Total_Amount REAL
);

INSERT INTO invoices VALUES ('INV001', 'Member', 'Health and beauty', 5, 500, 125,
2625);
SELECT '----- CUSTOMER BILL -----' AS Output
UNION ALL
SELECT 'Invoice Number : ' || Invoice_ID FROM invoices WHERE Invoice_ID = 'INV001'
UNION ALL
SELECT 'Customer Type : ' || Customer_Type FROM invoices WHERE Invoice_ID =
'INV001'
UNION ALL
SELECT 'Product Line : ' || Product_Line FROM invoices WHERE Invoice_ID = 'INV001'
UNION ALL
SELECT 'Quantity : ' || Quantity FROM invoices WHERE Invoice_ID = 'INV001'
UNION ALL
SELECT 'Unit Price : ' || Unit_Price FROM invoices WHERE Invoice_ID = 'INV001'
UNION ALL
SELECT 'Tax Amount : ' || Tax_Amount FROM invoices WHERE Invoice_ID = 'INV001'
UNION ALL
SELECT 'Final Amount : ' || Total_Amount FROM invoices WHERE Invoice_ID =
'INV001';
EXECUTION
BEGIN
generate_bill('INV001');
END;
/
