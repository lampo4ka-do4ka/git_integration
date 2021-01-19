BEGIN
 DECLARE BIGINTEGER optId;
    optId = CALL SYSADMIN.createOptimization(matchDescriptorOrSelectQuery => '"pg.test1"');
    CALL SYSADMIN.setOptimizationFrequency(optimizationId => optId, frequency => 1);
    CALL SYSADMIN.setRecOptAllowIndexCreationByType(recOptId => optId, allowIndexCreationByType => 'ALL');
    CALL SYSADMIN.setRecOptAllowIndexCreationByStatus(recOptId => optId, allowIndexCreationByStatus => 'NEW_ACCEPTED');
    CALL SYSADMIN.createOptimizationJob(recOptId => optId, allowIndexCreation => 'ALL', gatherNativeStats => true, indexCreationByStatus => 'NEW_ACCEPTED', parallelRunsAllowed => 1, retryCounter => 0, retryDelay => 0, runTimeout => 0, jobName => 'a2b11593-5a50-11eb-aebd-0a0027000015');
    CALL SYSADMIN.createSchedule(jobId => (SELECT id FROM SYSADMIN.ScheduleJobs WHERE jobName='a2b11593-5a50-11eb-aebd-0a0027000015'), type => 'INTERVAL', startDelay => 1, enabled => true, intervl => 60, scheduleName => 'a2bd2384-5a50-11eb-aebd-0a0027000015');
END;;