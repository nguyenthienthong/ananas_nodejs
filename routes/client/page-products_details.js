var express = require("express");
var router = express.Router();
var db = require("../../models/database");
/* GET home page. */
router.get("/", function (req, res, next) {
  res.render("site/page-products_details");
});

module.exports = router;
