 # srilanka-postal-codes-directory-csv-sql

  Sri Lanka postal codes and city/post office names in CSV and SQL formats.

  Data extracted from the official Sri Lanka Post Directory PDF: POST-CODE-BOOK-.pdf (Sri Lanka Post)
  Source: https://slpost.gov.lk/wp-content/uploads/2022/11/POST-CODE-BOOK-.pdf

  ## What’s inside

  - lk_postal_codes_and_cities.csv — easy-to-use dataset for any database or application.
  - lk_postal_codes_and_cities.sql — MySQL table + seed script (Flyway-friendly filename).

  ## CSV format

  Columns:

  - postal_code — 5 digits (string; keep leading zeros)
  - type — classification of the entry:
      - POST_OFFICE (entries from the directory pages)
      - CITY_ZONE (Colombo zone codes like Colombo 01 → 00100)
  - city_en — English name

  Notes:

  - Some postal codes can appear more than once with different type and/or city_en (example: 00200 has CITY_ZONE: Colombo 02 and POST_OFFICE: Slave Island).

  ## SQL (MySQL / Flyway)

  lk_postal_codes_and_cities.sql

  - Creates table lk_postal_codes_and_cities with columns postal_code, type, city_en
  - Uses primary key (postal_code, type)
  - Seeds data in an idempotent way (safe to run multiple times)
  - Designed for MySQL and works well as a Flyway migration

  ## Import options (choose what fits your stack)

  ### Option 1: MySQL (recommended) — run the provided SQL

  If you use MySQL (and especially Flyway), apply

  - Use as Flyway migration (place it in your Flyway migrations folder), or
  - Run it directly with your MySQL client.

  ### Option 2: MySQL bulk load — LOAD DATA [LOCAL] INFILE

  Fastest for MySQL if enabled:

  - Create the table (use your own DDL or adapt from the SQL file)
  - Load the CSV with LOAD DATA LOCAL INFILE ...

  (Exact command varies by environment and security settings.)

  ### Option 3: Batch insert via script (any DB)

  For Postgres / SQL Server / SQLite / etc:

  - Read the CSV
  - Insert rows in batches (e.g. 500–5000 rows per batch)
  - Use your DB’s upsert/ignore mechanism
      - Postgres: ON CONFLICT DO NOTHING
      - MySQL: INSERT IGNORE or ON DUPLICATE KEY UPDATE
      - SQLite: INSERT OR IGNORE

  You can implement the importer in any language (Python/Node/Go/Java/etc.).

  ## Accuracy & verification

  - All postal codes are stored as strings to preserve leading zeros.
  - The dataset includes Colombo zone codes 00100–01500 as type=CITY_ZONE.

  ## License / redistribution note

  Please verify the source PDF’s terms before redistributing derivative datasets. If you find an official license statement for the directory, open an issue/PR so it can be documented here.

  ## Contributing

  PRs welcome for:

  - Additional database import scripts (Postgres, MSSQL, SQLite)
  - Data-quality fixes (with source evidence/citation from the directory PDF)