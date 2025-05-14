# SQL Subqueries

This directory contains SQL queries that demonstrate the use of subqueries, including both correlated and non-correlated types, as part of the Airbnb database project.

## File: subqueries.sql

### 1. Properties with High Average Rating
Uses a non-correlated subquery to retrieve all properties where the average review rating is greater than 4.0.

### 2. Active Users with Frequent Bookings
Uses a correlated subquery to find users who have made more than 3 bookings.

## How to Run

Run these queries in a SQL environment like PostgreSQL, making sure the relevant tables exist:
- `properties`
- `reviews`
- `users`
- `bookings`

