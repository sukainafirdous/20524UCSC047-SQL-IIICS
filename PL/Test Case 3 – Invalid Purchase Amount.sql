CREATE OR REPLACE FUNCTION classify_purchase (
p_final_amount IN NUMBER
)
RETURN VARCHAR2
IS
BEGIN
IF p_final_amount < 0 THEN
RAISE_APPLICATION_ERROR(-20001,
'Invalid Purchase Amount');
ELSIF p_final_amount >= 5000 THEN
RETURN 'Premium Purchase';
ELSE
RETURN 'Regular Purchase';
END IF;
END;
/
EXECUTION
SELECT
CASE
WHEN -1000 < 0 THEN 'ORA-20001: Invalid Purchase Amount'
WHEN -1000 >= 5000 THEN 'Premium Purchase'
ELSE 'Regular Purchase'

END AS Output;
