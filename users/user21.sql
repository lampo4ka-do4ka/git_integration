CALL SYSADMIN.importUser(name => 'user21', encryptedPwd => '4TNj0DF02EY=', role_name => 'connect-dv-role');;
CALL SYSADMIN.addUserRole(user_name => 'user21', role_name => 'super-admin-role');;
CALL SYSADMIN.addUserRole(user_name => 'user21', role_name => 'role2');;