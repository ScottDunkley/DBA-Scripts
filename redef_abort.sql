BEGIN
DBMS_REDEFINITION.abort_redef_table(
uname      => 'ECRM_UK',
orig_table => 'EMAIL',
int_table  => 'EMAIL_INT');
END;
