SELECT
	C.CUS_CODE,
    C.CUS_BALANCE
FROM
	CUSTOMER C
LEFT JOIN
	INVOICE I ON C.CUS_CODE = I.CUS_CODE
WHERE
	I.INV_NUMBER IS NULL
ORDER BY
	C.CUS_CODE;