--define a function to get entire records of players table
 CREATE OR REPLACE FUNCTION players_record RETURN SYS_REFCURSOR
  AS 
   c1 SYS_REFCURSOR;
    BEGIN 
	 OPEN c1 FOR SELECT * FROM players;
	  RETURN c1;
	  END;
	  /