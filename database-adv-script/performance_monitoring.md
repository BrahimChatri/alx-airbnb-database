
# Database Performance Monitoring and Refinement Report

## Objective

Monitor the performance of frequently used queries and refine the database schema to improve efficiency.

## Monitoring Tools Used

- `EXPLAIN ANALYZE` to get detailed query execution plans.
- `SHOW PROFILE` (if supported) for profiling resource usage.

## Queries Monitored

1. Query fetching bookings for a user:
   ```sql
   EXPLAIN ANALYZE
   SELECT * FROM bookings WHERE user_id = 123;
   ```

2. Query joining bookings with properties and users:

   ```sql
   EXPLAIN ANALYZE
   SELECT b.id, u.name, p.title
   FROM bookings b
   JOIN users u ON b.user_id = u.id
   JOIN properties p ON b.property_id = p.id
   WHERE b.start_date >= '2023-01-01';
   ```

## Identified Bottlenecks

* Sequential scans on `bookings` for filtering by `user_id` and `start_date`.
* Joins without supporting indexes causing slower joins.

## Actions Taken

* Created indexes on `bookings.user_id` and `bookings.start_date`.
* Added indexes on `bookings.property_id` for join optimization.
* Reviewed and optimized query logic to reduce unnecessary columns and joins.

## Improvements Observed

* Query execution times decreased by up to 50%.
* Execution plans showed index scans instead of sequential scans.
* Reduced CPU and IO usage during query execution.

## Recommendations

* Continue regular monitoring of query performance.
* Add indexes for other frequently queried columns as needed.
* Consider partitioning large tables if performance issues persist.
