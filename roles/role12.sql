CALL SYSADMIN.addRole(name => 'role12', allowCreateTempTables  => true);;
CALL SYSADMIN.setPermissions(role_name => 'role12', resourceName => 'pg.test1', permissions => 'CRUDE', condition => 'xxx', isConstraint => true);;