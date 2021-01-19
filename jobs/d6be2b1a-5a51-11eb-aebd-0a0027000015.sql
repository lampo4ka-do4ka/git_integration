BEGIN
 DECLARE BIGINTEGER jobId;
    jobId = CALL SYSADMIN.CreateSQLJob(script => 'exec SYSADMIN.historyUpdate(''"dwh.test_hu_pg"'',''"pg.test1"'',array(''a''),array(''b'',''c''))', parallelRunsAllowed => 1, retryCounter => 0, retryDelay => 0, runTimeout => 0, description => 'History update from "pg.test1" to "dwh.test_hu_pg"', jobName => 'd6be2b1a-5a51-11eb-aebd-0a0027000015') OPTION $NOFAIL;
END;;