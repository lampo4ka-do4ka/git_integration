BEGIN
 DECLARE BIGINTEGER jobId;
    jobId = CALL SYSADMIN.CreateSQLJob(script => 'exec SYSADMIN.BatchUpdate(''"dwh.test_bu_ora"'',''"pg.test1"'',NULL)', parallelRunsAllowed => 1, retryCounter => 0, retryDelay => 0, runTimeout => 0, description => 'Batch replication from "pg.test1" to "dwh.test_bu_ora"', jobName => 'be177038-5a51-11eb-aebd-0a0027000015') OPTION $NOFAIL;
    CALL SYSADMIN.createSchedule(jobId => jobId, type => 'CHAINED', startDelay => 0, enabled => true, chainString => 'J14=SUCCESS', scheduleName => 'cbc5f0d9-5a51-11eb-aebd-0a0027000015');
    CALL SYSADMIN.createSchedule(jobId => jobId, type => 'CHAINED', startDelay => 0, enabled => true, chainString => '19=SUCCESS', scheduleName => '2c1e6674-5a52-11eb-aebd-0a0027000015');
    CALL SYSADMIN.createSchedule(jobId => jobId, type => 'CHAINED', startDelay => 0, enabled => true, chainString => 'J17=SUCCESS', scheduleName => '39f0c2c5-5a52-11eb-aebd-0a0027000015');
END;;