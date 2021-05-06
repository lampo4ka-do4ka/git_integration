BEGIN
 DECLARE BIGINTEGER jobId;
    jobId = CALL SYSADMIN.gitIntegrationActivatePushJob();;
END;;