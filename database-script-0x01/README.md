# Database Schema - ALX Airbnb Clone

This directory contains the SQL schema for the database design task.

## Files

- `schema.sql`: Contains SQL DDL to create tables, set up primary/foreign keys, and add indexes.
- `README.md`: This file.

## Tables

- `users`: Stores user information (name, email)
- `properties`: Property listings owned by users
- `bookings`: Bookings made by users for properties
- `reviews`: Reviews by users on properties

All tables are designed to comply with 3NF normalization.

## Execution

You can run the schema file using:

```bash
psql -d airbnb_clone -f seed.sql
