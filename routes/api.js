const express = require("express");
const router = express.Router();

// /api/books
router.get('/books', function (req, res, next) {

    let sqlquery = "SELECT * FROM books";

    db.query(sqlquery, (err, result) => {
        if (err) {
            res.json(err);
            return next(err);
        }
        //json output 
        res.json(result); 
    });
});

module.exports = router;