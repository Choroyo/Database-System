SELECT
	C.CUS_CODE,
    I.INV_NUMBER,
    P.P_DESCRIPT,
    ROUND(L.LINE_UNITS) AS `Unit Bought`,
    L.LINE_PRICE AS `Unit Price`,
	ROUND((L.LINE_UNITS * L.LINE_PRICE),2) AS `Subtotal`
FROM
	CUSTOMER C
    JOIN INVOICE I ON C.CUS_CODE = I.CUS_CODE
    JOIN LINE L ON I.INV_NUMBER = L.INV_NUMBER
    JOIN PRODUCT P ON L.P_CODE = P.P_CODE
ORDER BY
	C.CUS_CODE,
    I.INV_NUMBER,
    P.P_DESCRIPT
    