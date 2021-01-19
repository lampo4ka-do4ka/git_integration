CALL SYSADMIN.addRole(name => 'role2', allowCreateTempTables  => false);;
CALL SYSADMIN.setPermissions(role_name => 'role2', resourceName => 'a', permissions => 'UDEAL', isConstraint => true);;
CALL SYSADMIN.setPermissions(role_name => 'role2', resourceName => 'resource', permissions => 'CRUDEAL', isConstraint => true);;