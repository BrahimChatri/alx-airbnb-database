-- Initial Query with EXPLAIN and filters
EXPLAIN
SELECT 
    b.id AS booking_id,
    b.booking_date,
    u.name AS user_name,
    p.title AS property_title,
    pay.payment_status,
    pay.amount
FROM bookings b
JOIN users u ON b.user_id = u.id
JOIN properties p ON b.property_id = p.id
JOIN payments pay ON pay.booking_id = b.id
WHERE b.booking_date >= '2023-01-01'
AND pay.payment_status = 'Completed';

-- Optimized Query with EXPLAIN and filters
EXPLAIN
SELECT 
    b.id AS booking_id,
    b.booking_date,
    u.name AS user_name,
    p.title AS property_title,
    pay.payment_status,
    pay.amount
FROM bookings b
JOIN users u ON b.user_id = u.id
JOIN properties p ON b.property_id = p.id
JOIN payments pay ON pay.booking_id = b.id
WHERE b.booking_date >= '2023-01-01'
AND pay.payment_status = 'Completed';
