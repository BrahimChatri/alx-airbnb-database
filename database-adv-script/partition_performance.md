# Partitioning Booking Table: Performance Report

## Objective

Implement table partitioning on the `bookings` table based on the `start_date` column to improve query performance on large datasets.

## Partitioning Strategy

Range partitioning by year on the `start_date` column was used. This divides the bookings into yearly partitions.

## Performance Testing

Test queries fetching bookings within a date range showed significant improvements in query planning and execution time after partitioning.

## Observations

- Queries targeting specific date ranges scan only relevant partitions instead of the entire table.
- Reduced IO and faster query response times were observed.
- Maintenance and management of data by partitions became easier.

## Next Steps

Consider additional indexing on partitions and partition pruning for further optimization.
