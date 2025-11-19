Last login: Wed Nov 19 12:47:09 on ttys001
/usr/local/mysql/bin/mysql -u root -p%                                          (base) sarashah@mac ~ % /usr/local/mysql/bin/mysql -u root -p
Enter password: 
ERROR 1045 (28000): Access denied for user 'root'@'localhost' (using password: YES)
(base) sarashah@mac ~ % Safrah123!
zsh: command not found: Safrah123!
(base) sarashah@mac ~ % /usr/local/mysql/bin/mysql -u root -p
Enter password: 
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 27
Server version: 9.5.0 MySQL Community Server - GPL

Copyright (c) 2000, 2025, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> USE berties_books;
Reading table information for completion of table and column names
You can turn off this feature to get a quicker startup with -A

Database changed
mysql> CREATE TABLE users(
    -> id INT AUTO_INCREMENT PRIMARY KEY,
    -> username VARCHAR(50),
    -> first VARCHAR(50),
    -> last VARCHAR(100),
    -> hashedPassword VARCHAR(200)
    -> );
Query OK, 0 rows affected (0.041 sec)

mysql> 
