CALL SYSADMIN.addRole(name => 'role1', allowCreateTempTables  => true);;
CALL SYSADMIN.setPermissions(role_name => 'role1', resourceName => 'pg.test1', permissions => 'CRUDEAL', isConstraint => true);;
CALL SYSADMIN.setPermissions(role_name => 'role1', resourceName => 'views.v1', permissions => 'CRUDE', isConstraint => true);;