#Write a query to print all prime numbers less than or equal to 1000. 
#Print your result on a single line, and use the ampersand (&) character as your separator (instead of a space).



SELECT GROUP_cONCAT(numb SEPARATOR '&)
FROM(
     SELECT @num:=@num+1 as numb FROM 
           information.schema.tables t1,
           information.schema.tables t2,
           (SELECT @num :=1) tmp1
)temp1
WHERE 
     numb<=1000
   AND NOT EXISTS(
                 SELECT * FROM(
                               SELECT @I:=@I+1 as x FROM
                               information.schema.tables t1
                               information.schema.tables t2,
                               (SELECT @I :=1) tmp2
                 LIMIT 1000) temp2
                 WHERE FLOOR(numb/x) = (x/numb)
                      AND x >1 and x<numb);
