BEGIN
 DECLARE BIGINTEGER jobId;
    jobId = CALL SYSADMIN.CreateSQLJob(script => 'select * from "pg.test1";; select 1;; ', parallelRunsAllowed => 1, retryCounter => 0, retryDelay => 0, runTimeout => 0, description => 'x1', jobName => 'b317b49d-5a54-11eb-aebd-0a0027000015') OPTION $NOFAIL;
END;;