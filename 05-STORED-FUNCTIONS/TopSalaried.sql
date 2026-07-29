--define a function to get top 'n' salaried emp records

 CREATE OR REPLACE FUNCTION gettopn(n_rank NUMBER) RETURN SYS_REFCURSOR
  AS 
   c1 SYS_REFCURSOR;
    BEGIN 
    OPEN c1 FOR  SELECT * FROM 
	(SELECT ename,sal,DENSE_RANK() OVER (ORDER BY sal DESC ) AS rnk
	FROM EMP) WHERE rnk<=n_rank;
	 RETURN c1;
	 END;
	 /