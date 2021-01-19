BEGIN
 DECLARE BIGINTEGER jobId;
    jobId = CALL SYSADMIN.CreateSQLJob(script => 'exec SYSADMIN.historyUpdate(''"dwh.test_hu_ora"'',''"ora.test1"'',array(''a''),NULL)', parallelRunsAllowed => -1, retryCounter => 3, retryDelay => 30, runTimeout => 0, description => 'History update from "ora.test1" to "dwh.test_hu_ora"', jobName => '9d625496-5a51-11eb-aebd-0a0027000015') OPTION $NOFAIL;
END;;