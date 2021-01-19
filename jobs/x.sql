BEGIN
 DECLARE BIGINTEGER jobId;
    jobId = CALL SYSADMIN.CreateSQLJob(script => 'exec UTILS.upsert(source_table => ''"pg.test1"'',keyColumnsArray => array(''a''),updateColumns => array(''b''),invertUpdateColumns => false,target_table => ''"dwh.test_uu_pg"'',surrogateKeyType => NULL,surrogateKeyName => NULL,dbmsTableCreationOptions => NULL,checkMaxField => NULL,defaultvalueIfCheckMaxFieldIsNull => NULL)', parallelRunsAllowed => 1, retryCounter => 3, retryDelay => 30, runTimeout => 0, description => 'Upsert update from "pg.test1" to "dwh.test_uu_pg"', jobName => 'x') OPTION $NOFAIL;
END;;