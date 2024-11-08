SELECT
	ROUND(MIN(C.CUS_BALANCE)) AS `Minimum Balance`,
	MAX(C.CUS_BALANCE) AS `Maximum Balance`,
	ROUND(SUM(C.CUS_BALANCE)/ COUNT(DISTINCT I.CUS_CODE),2) AS `Avarage Balance`
FROM
	CUSTOMER C
    JOIN INVOICE I ON C.CUS_CODE = I.CUS_CODE