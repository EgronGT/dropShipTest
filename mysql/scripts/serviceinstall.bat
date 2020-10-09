@echo off
rem -- Check if argument is INSTALL or REMOVE

if not ""%1"" == ""INSTALL"" goto remove

"C:\Users\EgronGT\Desktop\Wordpress/mysql\bin\mysqld.exe" --install "wordpressMySQL" --defaults-file="C:\Users\EgronGT\Desktop\Wordpress/mysql\my.ini"

net start "wordpressMySQL" >NUL
goto end

:remove
rem -- STOP SERVICES BEFORE REMOVING

net stop "wordpressMySQL" >NUL
"C:\Users\EgronGT\Desktop\Wordpress/mysql\bin\mysqld.exe" --remove "wordpressMySQL"

:end
exit
