@echo off

echo Checking if schema exists...
docker exec -i ecommerce-backend-database-1 psql -U oumaima -d ecom -c "\dn"

echo.
echo Checking Liquibase changelog table...
docker exec -i ecommerce-backend-database-1 psql -U oumaima -d ecom -c "SELECT * FROM ecommerce_yt.databasechangelog;"

echo.
echo Listing all tables in ecommerce_yt schema...
docker exec -i ecommerce-backend-database-1 psql -U oumaima -d ecom -c "\dt ecommerce_yt.*"

echo.
echo Table details:
docker exec -i ecommerce-backend-database-1 psql -U oumaima -d ecom -c "SELECT table_name, column_name, data_type FROM information_schema.columns WHERE table_schema = 'ecommerce_yt' ORDER BY table_name, ordinal_position;"