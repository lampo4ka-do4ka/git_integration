call SYSADMIN.createConnection(name => 'ora', jbossCliTemplateName => 'oracle', connectionOrResourceAdapterProperties => 'user-name=XDBA,port=1521,host=localhost,db=xe', encryptedProperties => 'password=lRYFLiIXNtY=');;
call SYSADMIN.createDatasource(name => 'ora', translator => 'oracle', modelProperties => 'importer.tableTypes="TABLE,VIEW",importer.useFullSchemaName=FALSE,importer.importIndexes=TRUE', translatorProperties => '', encryptedModelProperties => '', encryptedTranslatorProperties => '');;