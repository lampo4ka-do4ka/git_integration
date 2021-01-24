BEGIN
 DECLARE BIGINTEGER jobId;
    jobId = CALL SYSADMIN.gitIntegrationActivatePushJob();;
    CALL SYSADMIN.createSchedule(jobId => jobId, type => 'CRON', startDelay => 0, enabled => true, cronExpression => '0 */1 * * * ?', scheduleName => '5ced8a0e-5e83-11eb-967d-0a0027000015');
END;;