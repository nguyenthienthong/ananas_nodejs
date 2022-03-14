var express = require("express");
var router = express.Router();
var db = require("../../models/database");
var modelCategory = require("../../models/category");

router.get("/", (req, res) => {
  modelCategory.list(function (listCategory) {
    res.json(listCategory);
  });
});
router.post("/", (req, res) => {
  let data = req.body;
  modelCategory.create(data, function () {
    res.json({ thongbao: "Đã thêm  xong một product mới" });
  });
});
router.get("/:id", (req, res) => {
  let id = req.params.id;
  modelCategory.read(id, function (u) {
    res.json(u);
  });
});
router.put("/:id", (req, res) => {
  let data = req.body;
  let id = req.params.id;
  modelCategory.update(id, data, function () {
    res.json({ thongbao: "Đã cập nhật product " });
  });
});

router.delete("/:id", function (req, res) {
  let id = req.params.id;
  modelCategory.delete(id, function () {
    res.json({ thongbao: "Đã xóa thành công" });
  });
});
module.exports = router;
