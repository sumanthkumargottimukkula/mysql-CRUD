drop SCHEMA if exists UNT;
create SCHEMA UNT;
drop user deepak@localhost;
flush privileges;
create user deepak@localhost identified by 'deepak@unt';
grant all on UNT.* to deepak@'localhost';

use UNT;

--     Just to verify whether the user is created and privileges are granted

-- SELECT user,authentication_string,plugin,host FROM mysql.user;
-- show grants for datasol@localhost;
