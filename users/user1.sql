CALL SYSADMIN.importUser(name => 'user1', encryptedPwd => '4TNj0DF02EY=', role_name => 'admin-role');;
CALL SYSADMIN.addUserRole(user_name => 'user1', role_name => 'connect-dv-role');;