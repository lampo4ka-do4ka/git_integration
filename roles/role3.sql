CALL SYSADMIN.addRole(name => 'role3', allowCreateTempTables  => false);;
CALL SYSADMIN.setPermissions(role_name => 'role3', resourceName => 'c.p1', permissions => 'CRUEAL', isConstraint => false);;
CALL SYSADMIN.setPermissions(role_name => 'role3', resourceName => 'resource', permissions => 'CRUDEAL', isConstraint => true);;