@echo off
"C:\Users\EgronGT\Desktop\Wordpress/mysql\bin\mysql.exe" --defaults-file="C:\Users\EgronGT\Desktop\Wordpress/mysql\my.ini" -u root -e "DELETE FROM mysql.user WHERE User='';"
"C:\Users\EgronGT\Desktop\Wordpress/mysql\bin\mysql.exe" --defaults-file="C:\Users\EgronGT\Desktop\Wordpress/mysql\my.ini" -u root -e "CREATE USER 'root'@'127.0.0.1' IDENTIFIED BY '%1';"
"C:\Users\EgronGT\Desktop\Wordpress/mysql\bin\mysql.exe" --defaults-file="C:\Users\EgronGT\Desktop\Wordpress/mysql\my.ini" -u root -e "GRANT ALL PRIVILEGES ON *.* TO 'root'@'127.0.0.1' WITH GRANT OPTION;"
"C:\Users\EgronGT\Desktop\Wordpress/mysql\bin\mysql.exe" --defaults-file="C:\Users\EgronGT\Desktop\Wordpress/mysql\my.ini" -u root -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '%1';"
