-- disable remote login
delete from mysql.user where host <> 'localhost';
flush privileges;
