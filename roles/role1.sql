CALL SYSADMIN.addRole(name => 'role1', allowCreateTempTables  => true);;
CALL SYSADMIN.setPermissions(role_name => 'role1', resourceName => '*', permissions => 'CRUDEAL', isConstraint => true);;