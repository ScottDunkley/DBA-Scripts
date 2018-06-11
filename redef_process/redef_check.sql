-- First lets do the redef check to make sure we can redef
undefine SCHEMA_NAME
undefine SOURCE_TABLENAME
BEGIN
  DBMS_REDEFINITION.CAN_REDEF_TABLE ('&&SCHEMA_NAME', '&&SOURCE_TABLENAME', DBMS_REDEFINITION.CONS_USE_PK);
END;
/
