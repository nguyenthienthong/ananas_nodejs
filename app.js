var createError = require("http-errors");
var express = require("express");
var path = require("path");
var cookieParser = require("cookie-parser");
var logger = require("morgan");

var usersRouter = require("./routes/database/users");
var productsRouter = require("./routes/database/products");
var categoryRouter = require("./routes/database/category");
var sellerRouter = require("./routes/database/seller");
var history_buy = require("./routes/database/history_buy");

// Admin
var adminRouter = require("./routes/admin/index");
var addCategory = require("./routes/admin/addCategory");
var addProduct = require("./routes/admin/addProduct");
var addUser = require("./routes/admin/addUser");
var detailProduct = require("./routes/admin/detailProduct");
var updateCategory = require("./routes/admin/updateCategory");
var updateProduct = require("./routes/admin/updateProduct");
var updateUser = require("./routes/admin/updateUser");

// Router client
var indexRouter = require("./routes/index");
var login = require("./routes/client/login");
var pageCart = require("./routes/client/page-cart");
var pageProduct = require("./routes/client/page-product");
var pageProductsDetails = require("./routes/client/page-products_details");
var confirmCart = require("./routes/client/confirm-cart");
var successCart = require("./routes/client/success");
var profile = require("./routes/client/my_profile");
var forgot = require("./routes/client/forgot");

var app = express();

// view engine setup
app.set("views", path.join(__dirname, "views"));
app.set("view engine", "ejs");

app.use(logger("dev"));
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(express.static(path.join(__dirname, "public")));

// Database
app.use("/v1/users", usersRouter);
app.use("/v1/products", productsRouter);
app.use("/v1/category", categoryRouter);
app.use("/v1/seller", sellerRouter);
app.use("/v1/history_buy", history_buy);

// Login
app.use("/", indexRouter);
app.use("/page-product", pageProduct);
app.use("/page-products_details", pageProductsDetails);
app.use("/page-cart", pageCart);
app.use("/login", login);
app.use("/confirm-cart", confirmCart);
app.use("/success", successCart);
app.use("/my_profile", profile);
app.use("/forgot", forgot);

// Admin
app.use("/admin", adminRouter);
app.use("/admin/addCategory", addCategory);
app.use("/admin/addProduct", addProduct);
app.use("/admin/addUser", addUser);
app.use("/admin/detailProduct", detailProduct);
app.use("/admin/updateCategory", updateCategory);
app.use("/admin/updateProduct", updateProduct);
app.use("/admin/updateUser", updateUser);

// catch 404 and forward to error handler
app.use(function (req, res, next) {
  next(createError(404));
});

// error handler
app.use(function (err, req, res, next) {
  // set locals, only providing error in development
  res.locals.message = err.message;
  res.locals.error = req.app.get("env") === "development" ? err : {};

  // render the error page
  res.status(err.status || 500);
  res.render("error");
});

module.exports = app;
