#packages:
# mysql-server
# default-libmysqlclient-dev
#end:
echo "#############################################################"
echo "#"
echo "#  Gauche-dbd-mysql"
echo "#"
echo "#"
service mysql start
cd /home/gauche
git clone --depth 1 https://github.com/kahua/Gauche-dbd-mysql.git
cd Gauche-dbd-mysql
./configure
make -j
mysql < /scripts/mysql-setup.sql
make -s check
service mysql stop
