-- Step 1: Create a new partitioned bookings table

CREATE TABLE bookings_partitioned (
    id SERIAL PRIMARY KEY,
    user_id INT NOT NULL,
    property_id INT NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    booking_date TIMESTAMP NOT NULL,
    status VARCHAR(50)
) PARTITION BY RANGE (start_date);

-- Step 2: Create partitions (example: yearly partitions)

CREATE TABLE bookings_2023 PARTITION OF bookings_partitioned
    FOR VALUES FROM ('2023-01-01') TO ('2024-01-01');

CREATE TABLE bookings_2024 PARTITION OF bookings_partitioned
    FOR VALUES FROM ('2024-01-01') TO ('2025-01-01');

-- Step 3: Migrate existing data from old bookings table to partitioned table (optional)
-- INSERT INTO bookings_partitioned SELECT * FROM bookings;

-- Step 4: Query example for fetching bookings by date range

SELECT * FROM bookings_partitioned
WHERE start_date BETWEEN '2023-06-01' AND '2023-12-31';
