undefine SCHEMA_NAME  
undefine OLD_TABLE_NAME
undefine NEW_TABLE_NAME
--
-- Create shell table first
--
create table "&&SCHEMA_NAME"."&&NEW_TABLE_NAME" as select * from "&&SCHEMA_NAME"."&&OLD_TABLE_NAME" where 1=2;
--
-- set parallel
--
alter session force parallel query parallel 10;
alter session force parallel dml parallel 10;
--
-- Start redef
--
BEGIN
  DBMS_REDEFINITION.START_REDEF_TABLE('&&SCHEMA_NAME','&&OLD_TABLE_NAME','&&NEW_TABLE_NAME');
END;
/

