BEGIN
 DECLARE BIGINTEGER jobId;
    jobId = CALL SYSADMIN.CreateSQLJob(script => 'select a from "pg.test1" ', parallelRunsAllowed => 1, retryCounter => 3, retryDelay => 30, runTimeout => 0, description => 'x', jobName => 'fe8497f9-5a53-11eb-aebd-0a0027000015') OPTION $NOFAIL;
    CALL SYSADMIN.createSchedule(jobId => jobId, type => 'INTERVAL', startDelay => 0, enabled => true, intervl => 60, scheduleName => '3e1ef13b-5a54-11eb-aebd-0a0027000015');
END;;