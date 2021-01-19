CALL SYSADMIN.addRole(name => 'role12', allowCreateTempTables  => true);;
CALL SYSADMIN.setPermissions(role_name => 'role12', resourceName => 'views.v1', permissions => 'CRUDE', condition => 'a = 1', isConstraint => true);;
CALL SYSADMIN.setPermissions(role_name => 'role12', resourceName => 'pg.test1', permissions => 'CRUDEAL', condition => '', isConstraint => true, mask => '');;
CALL SYSADMIN.setPermissions(role_name => 'role12', resourceName => 'views.v3', permissions => 'CRUDEA', condition => '', isConstraint => false, mask => '');;
