BEGIN
 DECLARE BIGINTEGER jobId;
    jobId = CALL SYSADMIN.gitIntegrationActivatePushJob();;
    CALL SYSADMIN.createSchedule(jobId => jobId, type => 'CRON', startDelay => 0, enabled => true, cronExpression => '0 */1 * * * ?', scheduleName => '50938f02-599c-11eb-839e-0a0027000015');
END;;