CREATE OR REPLACE FUNCTION classify_purchase
(
p_final_amount IN NUMBER
)
RETURN VARCHAR2
IS
BEGIN

IF p_final_amount IS NULL THEN

RAISE_APPLICATION_ERROR(
-20001,
'Purchase amount cannot be NULL'

);

ELSIF p_final_amount < 0 THEN

RAISE_APPLICATION_ERROR(
-20002,
'Invalid Purchase Amount'
);

ELSIF p_final_amount >= 5000 THEN

RETURN 'Premium Purchase';

ELSE

RETURN 'Regular Purchase';

END IF;

END classify_purchase;
/
SELECT invoice_number,
final_amount,
classify_purchase(final_amount) AS purchase_category
FROM supermarket_sales
WHERE invoice_number IN ('INV001')
ORDER BY invoice_number;
