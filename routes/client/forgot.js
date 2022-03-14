var express = require("express");
var router = express.Router();
var db = require("../../models/database");
var nodemailer = require("nodemailer");
/* GET home page. */
router.get("/", function (req, res, next) {
  res.render("site/forgot");
});

router.post("/send", function (req, res, next) {
  let email = req.body.email;
  console.log(email);
  var transporter = nodemailer.createTransport({
    // config mail server
    service: "Gmail",
    auth: {
      user: "nguyenthienthong3009@gmail.com",
      pass: "01667227152",
    },
  });
  var mainOptions = {
    // thiết lập đối tượng, nội dung gửi mail
    from: "admin",
    to: email,
    subject: "Test Nodemailer",
    text: "You recieved message from admin",
    html: "<p>You have got a new message</b>",
  };
  transporter.sendMail(mainOptions, function (err, info) {
    if (err) {
      console.log(err);
      res.redirect("/");
    } else {
      console.log("Message sent: " + info.response);
      res.redirect("/");
    }
  });
});

module.exports = router;
