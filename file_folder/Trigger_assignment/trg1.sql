drop TRIGGER if exists insertStudent;
delimiter $
create TRIGGER insertStudent before INSERT on insert_students for each ROW
BEGIN
	insert into log VALUES(NEW.id,CURRENT_DATE,CURRENT_TIME,'Record inserted successfully');
end $
delimiter ;