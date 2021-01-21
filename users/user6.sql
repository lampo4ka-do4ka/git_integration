CALL SYSADMIN.importUser(name => 'user6', encryptedPwd => '8HpLh3dI83I=', role_name => 'connect-dv-role');;
CALL SYSADMIN.addUserRole(user_name => 'user6', role_name => 'super-admin-role');;