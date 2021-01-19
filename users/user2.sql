CALL SYSADMIN.importUser(name => 'user2', encryptedPwd => '4TNj0DF02EY=', role_name => 'connect-dv-role');;
CALL SYSADMIN.addUserRole(user_name => 'user2', role_name => 'super-admin-role');;
CALL SYSADMIN.addUserRole(user_name => 'user2', role_name => 'role2');;