-- Create indexes
CREATE INDEX idx_bookings_user_id ON bookings(user_id);
CREATE INDEX idx_bookings_property_id ON bookings(property_id);
CREATE INDEX idx_properties_city ON properties(city);
CREATE INDEX idx_reviews_property_id ON reviews(property_id);

-- Example to check performance before/after index creation:
-- EXPLAIN ANALYZE SELECT * FROM bookings WHERE user_id = 123;
