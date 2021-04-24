var express = require("express"),
  mysql = require("mysql"),
  methodOverride = require("method-override"),
  passport = require("passport"),
  cookieParser = require("cookie-parser"),
  flash = require("connect-flash"),
  passprtConfig = require("./config/passportConfig"),
  bodyParser = require("body-parser");

var app = express();

// For Local MySQL Host
// var connection = mysql.createConnection({
//   host: "localhost",
//   user: "root",
//   database: "hm1",
// });

//for remote SQL
// var connection = mysql.createConnection({
//   host: "sql10.freesqldatabase.com",
//   user: "sql10380058",
//   password: "Ceb3REGTW4",
//   database: "sql10380058",
// });

// Remote Hostinger Mysql
var connection = mysql.createConnection({
  host: "sql130.main-hosting.eu",
  user: "u181123275_kkakhtar143",
  password: "Akhtar@9577",
  database: "u181123275_hm1",
});

passprtConfig(passport);

app.set("view engine", "ejs");
app.use(bodyParser.urlencoded({ extended: true }));
app.use(express.static(__dirname + "/public"));
app.use(methodOverride("_method"));
app.use(cookieParser("secret"));

// Authentication
app.use(
  require("express-session")({
    secret: "vidyapathaisalwaysrunning",
    resave: true,
    saveUninitialized: true,
  })
);

app.use(passport.initialize());
app.use(passport.session());
app.use(flash());

//Setting variable

app.use(function (req, res, next) {
  res.locals.currentUser = req.user;
  res.locals.success = req.flash("success");
  res.locals.error = req.flash("error");
  next();
});

// RESTFUL ROUTS

app.get("/", function (req, res) {
  res.redirect("/rooms");
});

// INDEX ROUTE

app.get("/rooms", function (req, res) {
  var q =
    "SELECT id, room_name, room_type, price, image, room_desc, room_size FROM rooms ORDER BY id DESC";
  connection.query(q, function (err, results) {
    if (err) throw err;
    var room = results;
    // console.log(room);
    res.render("home", { room: room });
  });
});

// NEW ROUTE

app.get("/rooms/new", isLoggedIn, function (req, res) {
  res.render("Room");
});

// CREATE ROUTR

app.post("/rooms", isLoggedIn, function (req, res) {
  var newRoom = {
    room_name: req.body.r_name,
    room_type: req.body.r_type,
    price: req.body.price,
    image: req.body.r_image,
    room_desc: req.body.r_desc,
    room_size: req.body.r_size,
  };
  connection.query("INSERT INTO rooms SET?", newRoom, function (err, result) {
    if (err) throw err;
    res.redirect("/");
  });
});

// SHOW ROUTE
app.get("/rooms/:id", function (req, res) {
  var p =
    "SELECT id, room_name, room_type, price, image, room_desc, room_size FROM rooms WHERE rooms.id = " +
    req.params.id;
  connection.query(p, function (err, fRoom) {
    if (err) throw err;
    var foundRoom = fRoom;
    // console.log(foundRoom.room_name);
    res.render("Rshow", { rm: foundRoom });
  });
});

// EDIT ROUTE

app.get("/rooms/:id/edit", isLoggedIn, function (req, res) {
  var p =
    "SELECT id, room_name, room_type, price, image, room_desc, room_size FROM rooms WHERE rooms.id = " +
    req.params.id;
  connection.query(p, function (err, fRoom) {
    if (err) throw err;
    var foundRoom = fRoom;
    // console.log(foundRoom[0].room_name);
    res.render("Redit", { rm: foundRoom });
  });
});

// UPDATE ROUTE
app.put("/rooms/:id", isLoggedIn, function (req, res) {
  var newRoom = {
    room_name: req.body.r_name,
    room_type: req.body.r_type,
    price: req.body.price,
    image: req.body.r_image,
    room_desc: req.body.r_desc,
    room_size: req.body.r_size,
  };

  // console.log(newRoom);
  // console.log(req.params.id);
  connection.query(
    "UPDATE rooms SET ? WHERE rooms.id = " + req.params.id,
    newRoom,
    function (err, uRoom) {
      if (err) throw err;
      var updatedRoom = uRoom;
      res.redirect("/rooms/" + req.params.id);
    }
  );
});

// DELETE ROUTE

app.delete("/rooms/:id", isLoggedIn, function (req, res) {
  //destroy blog
  var t = "DELETE FROM rooms WHERE rooms.id =" + req.params.id;
  connection.query(t, function (err, dRoom) {
    if (err) throw err;
    var deleteRoom = dRoom;
    // console.log(foundRoom[0].room_name);
    res.redirect("/rooms");
  });

  //redirect somewhere
});

//  About and contact route

app.get("/about", function (req, res) {
  res.render("about");
});

app.get("/contact", function (req, res) {
  res.render("contact");
});

// RESERVATION ROUTS

// CREATE RESERVATION
app.get("/rooms/:id/reservation", function (req, res) {
  var p =
    "SELECT id, room_name, room_type, price, image FROM rooms WHERE rooms.id = " +
    req.params.id;
  connection.query(p, function (err, fRoom) {
    if (err) throw err;
    var foundRoom = fRoom;
    // console.log(foundRoom[0].room_name);
    res.render("Reservation", { rm: foundRoom });
  });
});

// POST RESERVATION

app.post("/rooms/:id/reservaton", function (req, res) {
  var newCustomer = {
    f_name: req.body.f_name,
    l_name: req.body.l_name,
    adds: req.body.adds,
    age: req.body.age,
    email: req.body.email,
    ph_no: req.body.ph_no,
  };
  connection.query(
    "INSERT INTO customers SET?",
    newCustomer,
    function (err, result) {
      if (err) throw err;
      // console.log(result.insertId);

      var newReservation = {
        room_id: req.params.id,
        customer_id: result.insertId,
        check_in: req.body.check_in,
        check_out: req.body.check_out,
      };

      connection.query(
        "INSERT INTO reservation SET?",
        newReservation,
        function (err, result2) {
          if (err) throw err;
          var d =
            "SELECT DATEDIFF(check_out, check_in) AS datediff FROM reservation WHERE reservation.id = " +
            result2.insertId;
          connection.query(d, function (err, rslt) {
            if (err) throw err;
            // console.log(rslt[0].datediff);
            days = rslt[0].datediff;
            pay = days * req.body.price;
            res.render("bill", {
              customer: newCustomer,
              reservation: newReservation,
              rId: result2.insertId,
              amount: req.body.price,
              day: days,
              r_name: req.body.r_name,
              tpay: pay,
            });
          });
        }
      );
    }
  );
});

// DATA TRACK ROUTE

app.get("/data", isLoggedIn, function (req, res) {
  var d =
    "SELECT reservation.id AS RI, customers.id AS CI, customers.f_name AS FName, customers.l_name AS LName, customers.age, customers.email, customers.ph_no, rooms.id AS RmI, rooms.room_name, DATE_FORMAT(check_in, '%y-%m-%d') AS checkin, DATE_FORMAT(check_out, '%y-%m-%d') AS checkout, rooms.price FROM reservation, rooms, customers WHERE reservation.room_id = rooms.id AND reservation.customer_id = customers.id ORDER BY reservation.id DESC";
  connection.query(d, function (err, results) {
    if (err) throw err;
    var dat = results;
    // console.log(dat);
    res.render("data", { datas: dat });
  });
});

//  Employee details route
app.get("/employees", isLoggedIn, function (req, res) {
  var e =
    "SELECT id AS EI, e_name AS Name, position AS Pos, e_email AS Email, e_ph_no AS PHN, DATE_FORMAT(joining_date, '%d-%m-%y') AS joining FROM employees";
  connection.query(e, function (err, results) {
    if (err) throw err;
    var emp = results;
    // console.log(emp);
    res.render("employees", { empl: emp });
  });
});

//Emaplois add route
app.post("/employees", isLoggedIn, function (req, res) {
  var newEmployee = {
    e_name: req.body.e_name,
    e_email: req.body.e_email,
    e_ph_no: req.body.e_ph_no,
    position: req.body.position,
  };
  connection.query(
    "INSERT INTO employees SET?",
    newEmployee,
    function (err, result) {
      if (err) throw err;
      res.redirect("/employees");
    }
  );
});

// Employee Delte Route
app.delete("/employees/:id", isLoggedIn, function (req, res) {
  //destroy blog
  var et = "DELETE FROM employees WHERE id =" + req.params.id;
  connection.query(et, function (err, dRoom) {
    if (err) throw err;
    var deleteRoom = dRoom;
    // console.log(foundRoom[0].room_name);
    res.redirect("/employees");
  });

  //redirect somewhere
});

// AUTH ROUTES

// show register form
app.get("/register", isLoggedIn, function (req, res) {
  res.render("auth/register", { message: req.flash("signupMessage") });
});
//handle sign up logic

app.post(
  "/register",
  isLoggedIn,
  passport.authenticate("local-signup", {
    successRedirect: "/", // redirect to the secure profile section
    failureRedirect: "/register", // redirect back to the signup page if there is an error
    failureFlash: true, // allow flash messages
  })
);

// show login form
app.get("/login", function (req, res) {
  res.render("auth/login", { message: req.flash("loginMessage") });
});
// handling login logic
app.post(
  "/login",
  passport.authenticate("local-login", {
    successRedirect: "/rooms",
    failureRedirect: "/login",
    failureFlash: true,
  }),
  function (req, res) {}
);

// logot route
app.get("/logout", isLoggedIn, function (req, res) {
  req.logout();
  res.redirect("/");
});

function isLoggedIn(req, res, next) {
  if (req.isAuthenticated()) {
    return next();
  }
  res.redirect("/login");
}

// LISTENING ROUTE
const port = process.env.PORT || 2000;

app.listen(port, function () {
  console.log(`Server started at ${port}`);
});
