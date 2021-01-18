CALL SYSADMIN.addRole(name => 'system-role', allowCreateTempTables  => true);;
CALL SYSADMIN.setPermissions(role_name => 'system-role', resourceName => '*', permissions => 'CRUDEAL');;