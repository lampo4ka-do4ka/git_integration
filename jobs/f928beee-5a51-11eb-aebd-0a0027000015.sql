BEGIN
 DECLARE BIGINTEGER jobId;
    jobId = CALL SYSADMIN.createCopyOverSourceTableJob(sourceTable => 'pg.test1', targetTable => 'dwh.test_co_pg', cleanupMethod => 'TRUNCATE', description => 'sourceTable=pg.test1,targetTable=dwh.test_co_pg,cleanupMethod=TRUNCATE,description=Copy pg.test1 over dwh.test_co_pg,refreshTarget=true,allowsAlterTableStatements=false', refreshTarget => true, allowsAlterTableStatements => false, jobName => 'f928beee-5a51-11eb-aebd-0a0027000015', retryCounter => 0, retryDelay => 0, runTimeout => 0 );
    CALL SYSADMIN.createSchedule(jobId => jobId, type => 'CRON', startDelay => 0, enabled => true, cronExpression => '0 0 12 ? * SUN,MON', scheduleName => 'fc66f9ff-5a51-11eb-aebd-0a0027000015');
END;;