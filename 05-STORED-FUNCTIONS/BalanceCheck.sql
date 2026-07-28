--Define a Function to Check Account Balance Of  Customer
 CREATE OR REPLACE FUNCTION check_balance(p_accno NUMBER)  RETURN NUMBER
  AS 
  v_balance FLOAT ;
   BEGIN 
    SELECT BALANCE INTO v_balance 
	FROM accounts
	WHERE accno=p_accno;
	RETURN v_balance;
	END;
	/