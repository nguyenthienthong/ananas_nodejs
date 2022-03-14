var express = require("express");
var router = express.Router();
var db = require("../../models/database");
var modelProducts = require("../../models/products");

router.get("/", (req, res) => {
  modelProducts.list(function (listProducts) {
    res.json(listProducts);
  });
});
router.post("/", (req, res) => {
  let data = req.body;
  modelProducts.create(data, function () {
    res.json({ thongbao: "Đã thêm  xong một product mới" });
  });
});
router.get("/:id", (req, res) => {
  let id = req.params.id;
  modelProducts.read(id, function (u) {
    res.json(u);
  });
});
router.put("/:id", (req, res) => {
  let data = req.body;
  let id = req.params.id;
  modelProducts.update(id, data, function () {
    res.json({ thongbao: "Đã cập nhật product " });
  });
});
router.delete("/:id", function (req, res) {
  let id = req.params.id;
  modelProducts.delete(id, function () {
    res.json({ thongbao: "Đã xóa thành công" });
  });
});

router.get("/best_seller/:id", (req, res) => {
  let id = req.params.id;
  modelProducts.getSeller(id, function (u) {
    res.json(u);
  });
});
module.exports = router;
