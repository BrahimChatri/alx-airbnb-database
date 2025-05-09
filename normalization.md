# Database Normalization

## Objective
To ensure that the Airbnb-style database design adheres to the principles of normalization, specifically up to **Third Normal Form (3NF)**.

---

## Step 1: First Normal Form (1NF)

**Rule**: Eliminate repeating groups; each cell must contain atomic (indivisible) values.

### ✅ Applied
- Each attribute holds a single value (e.g., `email`, `location`, `price_per_night`)
- No lists or arrays in any field
- All records are uniquely identifiable by primary keys (`id`)

---

## Step 2: Second Normal Form (2NF)

**Rule**: Be in 1NF and remove partial dependencies (i.e., all non-key attributes must depend on the whole primary key).

### ✅ Applied
- All tables use **single-column primary keys**
- No table has composite primary keys that could cause partial dependencies
- Example:
  - `Booking` table: All attributes depend fully on `id`, not partially on `user_id` or `property_id`

---

## Step 3: Third Normal Form (3NF)

**Rule**: Be in 2NF and remove transitive dependencies (i.e., non-key attributes should not depend on other non-key attributes).

### ✅ Applied
- No non-key column depends on another non-key column
- Example:
  - `Property` has `location`, but there’s no extra attribute like `city_name` that depends on `location`
- `owner_id` in `Property` references `User`, which stores owner info in a normalized way

---

## Conclusion

The current schema is properly normalized to **Third Normal Form (3NF)**:

- Eliminates redundancy
- Ensures referential integrity
- Each table contains only data relevant to its entity
- All relationships are enforced via foreign keys
