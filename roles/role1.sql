CALL SYSADMIN.addRole(name => 'role1', allowCreateTempTables  => true);;
CALL SYSADMIN.setPermissions(role_name => 'role1', resourceName => 'views.v1', permissions => 'CRUDE', condition => 'a = 1', isConstraint => true);;
CALL SYSADMIN.setPermissions(role_name => 'role1', resourceName => 'views.v3', permissions => 'CRUDEA', isConstraint => false);;
CALL SYSADMIN.setPermissions(role_name => 'role1', resourceName => 'pg.test1', permissions => 'CRUDEAL', condition => '', isConstraint => true, mask => '');;