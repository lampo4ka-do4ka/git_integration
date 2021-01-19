CALL SYSADMIN.importUser(name => 'user3', encryptedPwd => '4TNj0DF02EY=', role_name => 'connect-dv-role');;
CALL SYSADMIN.addUserRole(user_name => 'user3', role_name => 'super-admin-role');;