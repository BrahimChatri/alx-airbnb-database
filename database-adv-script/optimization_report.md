# Query Optimization Report

## Initial Query Description

The initial query retrieves all bookings with related user, property, and payment details by joining the `bookings`, `users`, `properties`, and `payments` tables.

## Performance Analysis

Using `EXPLAIN` to analyze the query showed that multiple joins and lack of appropriate indexes caused slower execution times. The query scanned large amounts of data unnecessarily.

## Optimization Steps

- Added indexes on foreign key columns (`bookings.user_id`, `bookings.property_id`, `payments.booking_id`).
- Reduced unnecessary joins by excluding tables or columns not required.
- Used selective filtering to limit dataset when possible.

## Result

The refactored query runs significantly faster, with reduced cost and fewer rows scanned according to `EXPLAIN ANALYZE`.

## Next Steps

Consider further indexing and query tuning based on workload and data distribution.
