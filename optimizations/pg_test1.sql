BEGIN
 DECLARE BIGINTEGER optId;
    optId = CALL SYSADMIN.createOptimization(matchDescriptorOrSelectQuery => '"pg.test1"');
    CALL SYSADMIN.setOptimizationFrequency(optimizationId => optId, frequency => 1);
    CALL SYSADMIN.setRecOptAllowIndexCreationByType(recOptId => optId, allowIndexCreationByType => 'ALL');
    CALL SYSADMIN.setRecOptAllowIndexCreationByStatus(recOptId => optId, allowIndexCreationByStatus => 'NEW_ACCEPTED');
END;;