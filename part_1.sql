
use final_hw;
DROP function second_to_day;
DELIMITER $$
CREATE function second_to_day(sec INTEGER)
RETURNS text
deterministic
BEGIN
declare answer_string text default '';
declare days tinyint ;
declare hours tinyint ;
declare minutes tinyint ;
declare remains_second tinyint ;
set days=FLOOR( sec / 86400 );
set hours=FLOOR( ( sec / 3600 ) - FLOOR( sec / 86400 ) * 24 );
set minutes=FLOOR( ( sec / 60 ) - FLOOR( sec / 3600 ) * 60 );
set remains_second=sec - FLOOR( sec / 60 ) * 60;
SET answer_string= concat(days," day ",hours, " hours ",minutes, " minutes ",remains_second, " second");
return answer_string;
END $$
DELIMITER ;
select second_to_day(1234543) as result;
