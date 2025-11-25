USE berties_books;

CREATE TABLE IF NOT EXISTS users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50),
    first VARCHAR(50),
    last VARCHAR(100),
    email VARCHAR(100),
    hashedPassword VARCHAR(200)
);

# Insert data into the tables

USE berties_books;

INSERT INTO books (name, price)VALUES('Brighton Rock', 20.25),('Brave New World', 25.00), ('Animal Farm', 12.99) ;
INSERT INTO users (username, first, last, email, hashedPassword) VALUES 
('gold', 'Gold', 'Ring', 'gold@smiths.com','$2b$10$2uYUJBPiUhamxa8tUTdXPeXkzFInx8FQ7gq6w53VBCPqqlZ9G9lK6');
