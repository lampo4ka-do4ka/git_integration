CALL SYSADMIN.addRole(name => 'role2', allowCreateTempTables  => false);;
CALL SYSADMIN.setPermissions(role_name => 'role2', resourceName => 'a', permissions => 'RUDEAL', isConstraint => true);;