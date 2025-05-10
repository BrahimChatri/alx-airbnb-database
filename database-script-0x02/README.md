# Seed Data - ALX Airbnb Clone

This directory contains SQL scripts to populate the Airbnb clone database with realistic sample data.

## Files

- `seed.sql`: Contains SQL `INSERT` statements for users, properties, bookings, and reviews.
- `README.md`: This file.

## Execution

You can run the seed script using:

```bash
psql -d airbnb_clone -f seed.sql
