## Apr 18
1. Installed dbt-duckdb and ran `dbt debug` to verify the connection
2. Ran `setup.sh` to set up dbt with DuckDB and confirm connection
3. Created seed file `seeds/raw_customers.csv` with fake customer data
4. Created folders for bronze, silver, gold models under `models/`
5. Added `bronze_customers.sql` — a bronze model that selects from the seed
6. Ran `dbt seed` to load the CSV into DuckDB as a table
7. Ran `dbt run --select bronze_customers` to build the bronze view
8. Installed DuckDB CLI on macOS and ran `SHOW ALL TABLES` to see the view
