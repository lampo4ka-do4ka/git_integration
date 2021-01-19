BEGIN
 DECLARE BIGINTEGER optId;
    optId = CALL SYSADMIN.createOptimization(matchDescriptorOrSelectQuery => '"ora.test1"');
    CALL SYSADMIN.setOptimizationFrequency(optimizationId => optId, frequency => 1);
    CALL SYSADMIN.setRecOptAllowIndexCreationByType(recOptId => optId, allowIndexCreationByType => 'ALL');
    CALL SYSADMIN.setRecOptAllowIndexCreationByStatus(recOptId => optId, allowIndexCreationByStatus => 'NEW_ACCEPTED');
    CALL SYSADMIN.createOptimizationJob(recOptId => optId, allowIndexCreation => 'ALL', gatherNativeStats => true, indexCreationByStatus => 'NEW_ACCEPTED', parallelRunsAllowed => 1, retryCounter => 0, retryDelay => 0, runTimeout => 0, jobName => '78bce161-5a50-11eb-aebd-0a0027000015');
END;;