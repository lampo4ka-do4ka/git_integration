CALL SYSADMIN.importUser(name => 'user1', encryptedPwd => 'pY7oAC2y47w=', role_name => 'connect-dv-role');;
CALL SYSADMIN.addUserRole(user_name => 'user1', role_name => 'super-admin-role');;
CALL SYSADMIN.addUserRole(user_name => 'user1', role_name => 'role1');;