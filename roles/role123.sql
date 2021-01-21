CALL SYSADMIN.addRole(name => 'role123', allowCreateTempTables  => true);;
CALL SYSADMIN.setPermissions(role_name => 'role123', resourceName => 'pg.test1', permissions => 'CRUDE', condition => 'xxx', isConstraint => true);;
