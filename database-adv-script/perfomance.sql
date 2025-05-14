-- Initial Query: Retrieve all bookings with user, property, and payment details
SELECT 
    b.id AS booking_id,
    b.booking_date,
    u.id AS user_id,
    u.name AS user_name,
    p.id AS property_id,
    p.title AS property_title,
    pay.payment_status,
    pay.amount
FROM bookings b
JOIN users u ON b.user_id = u.id
JOIN properties p ON b.property_id = p.id
JOIN payments pay ON pay.booking_id = b.id;


-- Optimized Query: Added indexes recommended, removed unnecessary columns
-- Assuming indexes have been created on user_id, property_id, and booking_id in relevant tables

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
-- Add any filter conditions if applicable to reduce result set, e.g. date range
;
