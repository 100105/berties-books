const express = require("express");
const router = express.Router();

// /api/books
router.get('/books', function (req, res, next) {

    let search = req.query.search; 
    let min = req.query.minprice;
    let max = req.query.maxprice;

    let sqlquery;
    let params = [];
    let conditions = [];

    //searched something
    if (search && search.trim() !== '') {
        conditions.push("name LIKE ?");
        params.push('%' + search + '%');
    }

    // min price
    if (min && !isNaN(min)) {
        conditions.push("price >= ?");
        params.push(min);
    }

    // max price
    if (max && !isNaN(max)) {
        conditions.push("price <= ?");
        params.push(max);
    }

    // if theres condiitions
    if (conditions.length > 0) {
        sqlquery += " WHERE " + conditions.join(" AND ");
    }

    db.query(sqlquery, params, (err, result) => {
        if (err) {
            res.json({ error: err.message });
            next(err);
        } else {
            res.json(result);
        }
    });
});

module.exports = router;
