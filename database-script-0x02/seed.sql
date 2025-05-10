-- Users
INSERT INTO users (name, email) VALUES
('Alice Johnson', 'alice@example.com'),
('Bob Smith', 'bob@example.com'),
('Clara Lee', 'clara@example.com');

-- Properties
INSERT INTO properties (title, description, location, price_per_night, owner_id) VALUES
('Seaside Villa', 'Beautiful house by the sea', 'Agadir, Morocco', 120.00, 1),
('Downtown Apartment', 'Modern apartment in the city center', 'Casablanca, Morocco', 80.00, 2),
('Mountain Retreat', 'Cozy cabin in the mountains', 'Ifrane, Morocco', 100.00, 3);

-- Bookings
INSERT INTO bookings (user_id, property_id, start_date, end_date, total_price) VALUES
(2, 1, '2025-06-01', '2025-06-05', 480.00),
(3, 2, '2025-07-10', '2025-07-12', 160.00),
(1, 3, '2025-08-20', '2025-08-25', 500.00);

-- Reviews
INSERT INTO reviews (user_id, property_id, rating, comment) VALUES
(2, 1, 5, 'Absolutely loved the place! Very clean and relaxing.'),
(3, 2, 4, 'Great location, but a bit noisy at night.'),
(1, 3, 5, 'Perfect getaway! Very peaceful and well maintained.');
