BEGIN
 DECLARE BIGINTEGER jobId;
    jobId = CALL SYSADMIN.CreateSQLJob(script => 'exec SYSADMIN.BatchUpdate(''"dwh.test_bu_ora"'',''"pg.test1"'',NULL)', parallelRunsAllowed => 1, retryCounter => 0, retryDelay => 0, runTimeout => 0, description => 'Batch replication from "pg.test1" to "dwh.test_bu_ora"', jobName => 'be177038-5a51-11eb-aebd-0a0027000015') OPTION $NOFAIL;
END;;