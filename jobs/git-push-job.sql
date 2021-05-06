BEGIN
 DECLARE BIGINTEGER jobId;
    jobId = CALL SYSADMIN.gitIntegrationActivatePushJob();;
    CALL SYSADMIN.createSchedule(jobId => jobId, type => 'CRON', startDelay => 0, enabled => true, cronExpression => '0 */1 * * * ?', scheduleName => 'fe59ae11-ae57-11eb-9552-0a0027000013');
END;;