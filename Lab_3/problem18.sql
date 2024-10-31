SELECT
	C.CUS_CODE,
	COUNT(DISTINCT I.INV_NUMBER) AS `Number of Invoices`,
    ROUND(SUM(L.LINE_UNITS * L.LINE_PRICE),2) AS `Invoice Total`	
FROM
	CUSTOMER C
	JOIN INVOICE I ON C.CUS_CODE = I.CUS_CODE
    JOIN LINE L ON I.INV_NUMBER = L.INV_NUMBER
GROUP BY
	C.CUS_CODE
ORDER BY
	C.CUS_CODE