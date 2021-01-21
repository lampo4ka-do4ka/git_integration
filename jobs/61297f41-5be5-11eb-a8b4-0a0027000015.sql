BEGIN
 DECLARE BIGINTEGER jobId;
    jobId = CALL SYSADMIN.CreateSQLJob(script => 'select 1', parallelRunsAllowed => 1, retryCounter => 0, retryDelay => 0, runTimeout => 0, description => 'x', jobName => '61297f41-5be5-11eb-a8b4-0a0027000015') OPTION $NOFAIL;
END;;