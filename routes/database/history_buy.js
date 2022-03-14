var express = require("express");
var router = express.Router();
var db = require("../../models/database");
var modelHistory_buy = require("../../models/history_buy");

router.get("/", (req, res) => {
  modelHistory_buy.list(function (listhistory_buy) {
    res.json(listhistory_buy);
  });
});
router.post("/", (req, res) => {
  let data = req.body;
  modelHistory_buy.create(data, function () {
    res.json({ thongbao: "Đã thêm  xong một user mới" });
  });
});
router.get("/:id", (req, res) => {
  let id = req.params.id;
  modelHistory_buy.read(id, function (u) {
    res.json(u);
  });
});
router.put("/:id", (req, res) => {
  let data = req.body;
  let id = req.params.id;
  modelHistory_buy.update(id, data, function () {
    res.json({ thongbao: "Đã cập nhật user " });
  });
});

router.delete("/:id", function (req, res) {
  let id = req.params.id;
  modelHistory_buy.delete(id, function () {
    res.json({ thongbao: "Đã xóa thành công" });
  });
});
module.exports = router;
