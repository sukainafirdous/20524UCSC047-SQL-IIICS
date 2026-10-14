CREATE TABLE supermarket_sales (
invoice_number VARCHAR2(10) PRIMARY KEY,
customer_type VARCHAR2(20) NOT NULL,
product_line VARCHAR2(50) NOT NULL,
quantity NUMBER(5) NOT NULL,
unit_price NUMBER(10,2) NOT NULL,
total_amount NUMBER(12,2) NOT NULL,
tax_amount NUMBER(12,2) NOT NULL,
final_amount NUMBER(12,2) NOT NULL,
CONSTRAINT chk_quantity CHECK (quantity > 0),
CONSTRAINT chk_unit_price CHECK (unit_price > 0),
CONSTRAINT chk_total_amount CHECK (total_amount >= 0),
CONSTRAINT chk_tax_amount CHECK (tax_amount >= 0),
CONSTRAINT chk_final_amount CHECK (final_amount >= 0)
);
Table Created
