USE [Master];

-- CREATE [UserService] database

PRINT 'Checking existence of [UserService] database...';

IF (EXISTS (SELECT 1
              FROM [master].dbo.sysdatabases
             WHERE [name] = 'UserService'))
   BEGIN
      PRINT 'Creating [UserService] database...';
      CREATE DATABASE [UserService];
      PRINT '[UserService] database created.';
   END
ELSE
   BEGIN
      PRINT '[UserService] database found.';
   END