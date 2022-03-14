var express = require("express");
var router = express.Router();
var db = require("../../models/database");
var modelSeller = require("../../models/seller");

router.get("/", (req, res) => {
  modelSeller.list(function (listSeller) {
    res.json(listSeller);
  });
});
router.post("/", (req, res) => {
  let data = req.body;
  modelSeller.create(data, function () {
    res.json({ thongbao: "Đã thêm  xong một product mới" });
  });
});
router.get("/:id", (req, res) => {
  let id = req.params.id;
  modelSeller.read(id, function (u) {
    res.json(u);
  });
});
router.put("/:id", (req, res) => {
  let data = req.body;
  let id = req.params.id;
  modelSeller.update(id, data, function () {
    res.json({ thongbao: "Đã cập nhật product " });
  });
});

router.delete("/:id", function (req, res) {
  let id = req.params.id;
  modelSeller.delete(id, function () {
    res.json({ thongbao: "Đã xóa thành công" });
  });
});
module.exports = router;
