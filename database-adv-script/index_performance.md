# Index Implementation and Performance Optimization

This document explains the process of identifying key columns for indexing and creating indexes to improve query performance on the Airbnb database.

## High-Usage Columns

Based on typical query patterns (WHERE, JOIN, ORDER BY), the following columns were identified for indexing:

- users.id
- bookings.user_id
- bookings.property_id
- properties.id
- properties.city
- reviews.property_id

## Index Creation Commands

See the database_index.sql file for the index creation statements.

## Performance Measurement

Use EXPLAIN ANALYZE before and after creating indexes to measure improvements.

Example:

EXPLAIN ANALYZE
SELECT * FROM bookings WHERE user_id = 123;

Compare execution plans and timings to evaluate performance gains.

## Summary

Creating indexes on frequently used columns can greatly improve query performance.
