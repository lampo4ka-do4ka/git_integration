CALL SYSADMIN.addRole(name => 'admin-role', allowCreateTempTables  => true);;
CALL SYSADMIN.setPermissions(role_name => 'admin-role', resourceName => '*', permissions => 'CRUDEAL');;