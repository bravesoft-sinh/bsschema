sudo yum install -y java
sudo yum install -y graphviz
curl -o schemaspy.jar https://github.com/schemaspy/schemaspy/releases/download/v6.1.0/schemaspy-6.1.0.jar
curl https://dev.mysql.com/get/Downloads/Connector-J/mysql-connector-java-5.1.49.tar.gz
java -jar $PWD/schemaspy.jar -configFile $PWD/schemaspy.properties