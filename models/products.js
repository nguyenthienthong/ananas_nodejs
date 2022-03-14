var db = require("./database");
exports.list = function (callback) {
  let sql = `SELECT *  FROM products`;
  db.query(sql, function (err, d) {
    callback(d);
  });
};
exports.create = function (data, callback) {
  //hàm chèn user mới vào table
  let sql = "INSERT INTO products SET ?";
  db.query(sql, data, function (err, d) {
    callback(d);
  });
};
exports.update = function (id, data, callback) {
  let sql = "UPDATE products  SET ? WHERE id = ?";
  db.query(sql, [data, id], (err, d) => {
    if (err) throw err;
    callback();
  });
};
exports.read = function (id, callback) {
  let sql = "SELECT * FROM products WHERE id = ?";
  db.query(sql, id, (err, d) => {
    data = d[0];
    callback(data);
  });
};
exports.delete = function (id, callback) {
  let sql = "DELETE FROM products WHERE id = ?";
  db.query(sql, id, (err, d) => {
    if (err) throw err;
    callback(d);
  });
};
exports.getSeller = function (id, callback) {
  let sql = "SELECT * FROM products WHERE best_seller = ?";
  db.query(sql, id, (err, d) => {
    data = d;
    callback(data);
  });
};
