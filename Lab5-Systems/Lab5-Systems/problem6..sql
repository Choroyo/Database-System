SET SQL_SAFE_UPDATE = 0;

DELETE FROM  EMP_1

WHERE JOB_CODE = 500
	AND EMP_FNAME = "William"
    AND EMP_LNAME = "Smithfield"
    AND EMP_HIREDATE = '2008-06-22';

SET SQL_SAFE_UPDATES =1;