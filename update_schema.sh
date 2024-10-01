# This script is used to update the schema documentation and generate a datestamped zip file for sharing
rm -rf cs_master &&
java -jar schemaspy-6.2.4.jar -t pgsql -db clientsafe_master -schemas public,finance -host localhost -port 5432 -u postgres -dp postgresql-42.5.4.jar -o cs_master -vizjs &&
zip -FSrXq cs_master_$(date +%F).zip cs_master