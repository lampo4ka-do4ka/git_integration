CALL SYSADMIN.importUser(name => 'user12', encryptedPwd => '4TNj0DF02EY=', role_name => 'connect-dv-role');;
CALL SYSADMIN.addUserRole(user_name => 'user12', role_name => 'role123');;