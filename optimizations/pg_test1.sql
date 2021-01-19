BEGIN
 DECLARE BIGINTEGER optId;
    optId = CALL SYSADMIN.createOptimization(matchDescriptorOrSelectQuery => '"pg.test1"');
    CALL SYSADMIN.setOptimizationFrequency(optimizationId => optId, frequency => 1);
    CALL SYSADMIN.setRecOptAllowIndexCreationByType(recOptId => optId, allowIndexCreationByType => 'ALL');
    CALL SYSADMIN.setRecOptAllowIndexCreationByStatus(recOptId => optId, allowIndexCreationByStatus => 'NEW_ACCEPTED');
    CALL SYSADMIN.createIncrementalOptimizationJob(recOptId => optId, newRowCheckExpression => '"a"', identityExpression => 'null', deleteOldData => true, gatherNativeStats => false, parallelRunsAllowed => 1, retryCounter => 3, retryDelay => 30, runTimeout => 0, jobName => '14b3fc22-5a52-11eb-aebd-0a0027000015');
END;;