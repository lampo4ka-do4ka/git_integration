BEGIN
 DECLARE BIGINTEGER jobId;
    jobId = CALL SYSADMIN.CreateSQLJob(script => 'select * from "pg.test1" ', parallelRunsAllowed => 1, retryCounter => 0, retryDelay => 0, runTimeout => 0, description => 'x', jobName => 'fe8497f9-5a53-11eb-aebd-0a0027000015') OPTION $NOFAIL;
END;;