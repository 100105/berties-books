const express = require("express");
const router = express.Router();

// /api/books
router.get('/books', function (req, res, next) {

    let search = req.query.search; 

    let sqlquery;

    if (search && search.trim() !== '') {
        search = '%' + search + '%'; 
        sqlquery = "SELECT * FROM books WHERE name LIKE ?";
    } else {
        sqlquery = "SELECT * FROM books";
    }

    db.query(sqlquery, search ? [search] : [], (err, result) => {
        if (err) {
            return res.json({ error: "Database error", details: err });
        }
        //json results
        res.json(result); 
    });
});

module.exports = router;