
CREATE TABLE customer(
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    phone VARCHAR(15),
    isLoyaltyMem BOOLEAN
);

CREATE TABLE movies(
    film_name VARCHAR(100) PRIMARY KEY,
    film_rating VARCHAR(5),
    film_type VARCHAR(15)
);

-- WHY AM I GETTING AND ERROR WHEN I TRY TO ADD TICKETS AND CONCESSIONS TABLES? I'VE TRIED W AND W/0
-- THE FOREIGN KEYS AND HAVE ADJUSTED COMMA PLACEMENT
CREATE TABLE tickets(
    ticket_num SERIAL PRIMARY KEY,
    ticket_type VARCHAR(15),
    ticket_price INTEGER(10,2),
    customer_id SERIAL NOT NULL,
    film_name VARCHAR(100),
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
);

CREATE TABLE concessions(
    item_id SERIAL PRIMARY KEY,
    item_price INTEGER(10,2),
    item_quantity INTEGER,
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
);