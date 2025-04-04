create function udf_extractnumbers
(
 declare @input varchar(255)
)
returns varchar(255)
as
begin
 declare @alphabetIndex int Patindex('%[0-9]%',input)
 begin
	while @alphabetIndex >0
	begin
	 set @input = Stuff(@input, @alphabetIndex, 1, '')
	 set @alphabetIndex = Patindex('%[^0-9]%', input)
	End
 end
 return Isnull(@input, 0)
end;

select patindex('%[^0-9]%','A1B2C3');
select patindex('%[^0-9]%', '12345');
select stuff('12C3', 3, 1, '');

DROP FUNCTION IF EXISTS PatIndex;

DELIMITER $$

CREATE FUNCTION PatIndex(pattern VARCHAR(255), tblString VARCHAR(255)) RETURNS INTEGER
    DETERMINISTIC
BEGIN

    DECLARE i INTEGER;
    SET i = 1;

    myloop: WHILE (i <= LENGTH(tblString)) DO

        IF SUBSTRING(tblString, i, 1) REGEXP pattern THEN
            RETURN(i);
            LEAVE myloop;        
        END IF;    

        SET i = i + 1;

    END WHILE; 

    RETURN(0);

END
