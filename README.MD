# Berties Books

This project is labwork for Dynamic web applications module that uses node.js with Express, EJS and MySQL database.

---

## How to Run
1. npm install
2. node index.js

how to run on vm
1. npm install
2. npm install bcrypt
3. import database files: create_db.sql and insert_test_data.sql
3. git pull
4. forever stopall
5. forever start index.js
---

### Technologies Used
- Node.js
- Express
- EJS
- JavaScript
- HTML & CSS
- MySQL
- bcrypt
- dotenv
- forever
- express validator
- express sanitiser


---

#### credentials
the database credentials were moved from index.js and put into a .env file using dotenv module

we did this becayse it improves security by making sure passwords weren't being stored in public coded that everyone can ee

the .env file was put into .gitignore but you can still mark it because i used the variables you shared 

the .env used are loaded in index.js in the require dotenv line

---

##### lab explanations
validation has been added to registration route: 
1. first name and last name needs it to prevent blank data
2. email needs to be a specific format to prevent fake information
3. username has to be specific amount of characters 
4. password has to be minimum 8 characters including A-Z, a-z, numbers and _

sanitisation 
first, last and user name, email sanitised to prevent javascript from being submitted inside <script> tags. after sanitisation tags are safely removes and the code won't execute.

there are also sanitised fields in the books route to stop XSS attacks

access control added on /books/list, /books/addbook, /users/audit. there's log in needed for admin actions


API DOCUMENTATION LAB 9:
1. /api/books -> shows all books
2. /api/books?search=animal -> shows all the books that have the word animal in the title
3. /api/books?minprice=5&maxprice=10 -> shows all the books that are priced between 5£ and 10£
4. /api/books?sort=price -> sorts the books in order of lowest to highest price
5. /api/books?sort=name -> alphabetically sorts the boosk in order, a-z
6. /api/books?sort=date -> sorts the books where latest added book is at the top
7. /api/books?search=an&minprice=10&sort=name -> mixes all the sorting options together

~ the api results are always returned in json format
~ if there's no parameters, all the books added to the shop will be shown
~ the api has no access controls so it's public

---
###### Author
Sara Shah
