
# ALX Airbnb Clone - ER Diagram

## Objective
Create an Entity-Relationship Diagram (ERD) that models the core data structure of the Airbnb clone project. The ERD includes key entities, their attributes, and the relationships between them.

## Entities and Attributes

### 1. User
- `id` (PK)
- `name`
- `email`
- `password`

### 2. Property
- `id` (PK)
- `title`
- `description`
- `location`
- `price_per_night`
- `owner_id` (FK → User.id)

### 3. Booking
- `id` (PK)
- `user_id` (FK → User.id)
- `property_id` (FK → Property.id)
- `start_date`
- `end_date`
- `total_price`

### 4. Review
- `id` (PK)
- `user_id` (FK → User.id)
- `property_id` (FK → Property.id)
- `rating`
- `comment`

## Relationships
- A **User** can **own many Properties**.
- A **Property** belongs to one **User** (owner).
- A **User** can **book many Properties**.
- A **Property** can have many **Bookings**.
- A **Booking** is associated with one **User** and one **Property**.
- A **User** can **write many Reviews** for different Properties.
- A **Property** can have many **Reviews**.

## ER Diagram
The ER diagram can be found in the file:  
📎 <img src="Untitled Diagram.drawio.png"/>

## Tools
- Diagram created using [Draw.io](https://draw.io)
