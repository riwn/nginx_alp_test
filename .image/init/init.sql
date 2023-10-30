create table sample1(
    id int auto_increment,
    col1 text,
    col2 text,
    primary key (id)
) ;


drop procedure if exists loop_insert;

delimiter //

create procedure loop_insert(in maxNum int)
begin
    declare i int default 0;
    declare str varchar(45) ;
    while i < maxNum do
        set i = i + 1;
        set str = lpad(i, 10, '0');
        insert into sample1 (`col1`, `col2`)
        values(str, concat('No.', str, '_col'));
    end while;
end
