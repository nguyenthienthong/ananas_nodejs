var express = require("express");
var router = express.Router();
var db = require("../../models/database");
// const { OAuth2Client } = require("google-auth-library");
// const { get } = require("express/lib/response");
// const { token } = require("morgan");
// const CLIENT_ID =
//   "286052664515-r93g5heljgall0knen7doj7u6ra9vhpf.apps.googleusercontent.com";
// const client = new OAuth2Client(CLIENT_ID);
/* GET home page. */
router.get("/", function (req, res, next) {
  res.render("site/login");
});

// router.get("/logout",(req,res)=>{

// })

// router.post("/", function (req, res) {
//   var id_token = googleUser.getAuthResponse().id_token;
//   async function verify() {
//     const ticket = await client.verifyIdToken({
//       idToken: id_token,
//       audience: CLIENT_ID,
//     });
//     const payload = ticket.getPayload();
//     console.log(payload);
//   }
//   verify()
//     .then(() => {
//       res.cookie("session-token", id_token);
//       res.send("success");
//     })
//     .catch(console.error);
// });
module.exports = router;
