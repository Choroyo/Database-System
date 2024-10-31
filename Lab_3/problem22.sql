SELECT
	SUM(C.CUS_BALANCE)`Total Balances`,
	ROUND(MIN(C.CUS_BALANCE)) AS `Minimum Balance`,
	MAX(C.CUS_BALANCE) AS `Maximum Balance`,
	ROUND(SUM(C.CUS_BALANCE)/ COUNT(DISTINCT C.CUS_CODE),2) AS `Avarage Balance`
FROM
	CUSTOMER C