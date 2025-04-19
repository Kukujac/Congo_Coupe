# Justice Database Project

This repository contains:
- SQL scripts to create a PostgreSQL/PostGIS database and a `Justice` table.
- Instructions for hosting and connecting the database.
- QGIS project setup connected to the PostgreSQL/PostGIS backend, with French form field aliases.

## Structure

- `sql/create_justice_table.sql`: Script to create the Justice table.
- `qgis/`: Folder to store the QGIS project file and notes.

## Dependencies

- PostgreSQL (13+ recommended)
- PostGIS extension
- QGIS (3.x)

## Setup

1. Run the SQL script in `sql/create_justice_table.sql` to set up your database and table.
2. Connect QGIS to your PostgreSQL/PostGIS server and load the `Justice` table.
3. Apply French aliases in the QGIS attribute form panel.
