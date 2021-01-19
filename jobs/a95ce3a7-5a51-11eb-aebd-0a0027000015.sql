BEGIN
 DECLARE BIGINTEGER jobId;
    jobId = CALL SYSADMIN.createCopyOverSourceTableJob(sourceTable => 'ora.test1', targetTable => 'dwh.test_co_ora', cleanupMethod => 'DELETE', description => 'sourceTable=ora.test1,targetTable=dwh.test_co_ora,cleanupMethod=DELETE,description=Copy ora.test1 over dwh.test_co_ora,refreshTarget=true,allowsAlterTableStatements=false', refreshTarget => true, allowsAlterTableStatements => false, jobName => 'a95ce3a7-5a51-11eb-aebd-0a0027000015', retryCounter => 0, retryDelay => 0, runTimeout => 0 );
END;;