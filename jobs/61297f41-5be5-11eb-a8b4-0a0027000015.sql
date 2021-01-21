BEGIN
 DECLARE BIGINTEGER jobId;
    jobId = CALL SYSADMIN.CreateSQLJob(script => 'select * from "a.v1" ', parallelRunsAllowed => 1, retryCounter => 0, retryDelay => 0, runTimeout => 0, description => '[SQL script] select * from "a.v1" ', jobName => '61297f41-5be5-11eb-a8b4-0a0027000015') OPTION $NOFAIL;
END;;