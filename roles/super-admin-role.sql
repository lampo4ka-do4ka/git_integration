CALL SYSADMIN.addRole(name => 'super-admin-role', allowCreateTempTables  => true);;
CALL SYSADMIN.setPermissions(role_name => 'super-admin-role', resourceName => '*', permissions => 'CRUDEAL');;