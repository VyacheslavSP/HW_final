use final_hw;
DROP function even;
DELIMITER $$
CREATE function even(limitNum tinyint)
RETURNS text
deterministic
BEGIN
declare answer_string text default '';
declare counter tinyint default 1;
while counter<=limitNum
DO
if counter%2=0 then
SET answer_string= concat(answer_string,counter, " ");
end if;
SET counter=counter+1;
END while;
return answer_string;
END $$
DELIMITER ;
select even(100) as result;