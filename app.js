var express 		= require('express'),
	mysql			= require('mysql'),
	methodOverride	= require('method-override'),
    bodyParser 		= require('body-parser');
    
var app = express();


var connection = mysql.createConnection({
	host	: 'localhost',
	user	: 'root',
	database: 'hm1'
});


app.set("view engine", "ejs");
app.use(bodyParser.urlencoded({extended: true}));
app.use(express.static(__dirname + "/public"));
app.use(methodOverride('_method'));

// app.use(methodOverride(function(req, res){
// 	if (req.body && typeof req.body === 'object' && '_method' in req.body) {
// 	  // look in urlencoded POST bodies and delete it
// 	  var method = req.body._method
// 	  delete req.body._method
// 	  return method
// 	}
//   }));

// RESTFUL ROUTS

app.get("/", function(req, res){
	res.redirect('/rooms');
});

// INDEX ROUTE

app.get("/rooms", function(req, res){
	var q = "SELECT id, room_name, room_type, price, image FROM rooms";
	connection.query(q, function(err, results){
		if(err) throw err;
		var room = results;
		// console.log(room);
        res.render('home', {room:room});
	});
});

// NEW ROUTE

app.get("/rooms/new", function(req, res){
	res.render('Room');
});

// CREATE ROUTR

app.post("/rooms", function(req, res){
	var  newRoom = { 
		room_name : req.body.r_name,
		room_type : req.body.r_type,
		price : req.body.price,
		image : req.body.r_image
	};
	connection.query('INSERT INTO rooms SET?', newRoom, function(err, result){
		if(err) throw err;
		res.redirect("/");
	});
});


// SHOW ROUTE
app.get("/rooms/:id", function(req, res){

	var p = "SELECT id, room_name, room_type, price, image FROM rooms WHERE rooms.id = " + req.params.id;
	connection.query(p, function(err, fRoom){
		if(err) throw err;
		var foundRoom = fRoom;
		// console.log(foundRoom.room_name);
        res.render('Rshow', {rm:foundRoom});
	});
});


// EDIT ROUTE

app.get("/rooms/:id/edit", function(req, res){
	var p = "SELECT id, room_name, room_type, price, image FROM rooms WHERE rooms.id = " + req.params.id;
	connection.query(p, function(err, fRoom){
		if(err) throw err;
		var foundRoom = fRoom;
		// console.log(foundRoom[0].room_name);
        res.render('Redit', {rm:foundRoom});
	});
});


// UPDATE ROUTE
app.put("/rooms/:id", function(req, res) {
	var  newRoom = { 
		room_name : req.body.r_name,
		room_type : req.body.r_type,
		price : req.body.price,
		image : req.body.r_image
	};

	// console.log(newRoom);
	// console.log(req.params.id);
	connection.query('UPDATE rooms SET ? WHERE rooms.id = ' + req.params.id, newRoom, function(err, uRoom){
		if(err) throw err;
		var updatedRoom = uRoom;
		res.redirect("/rooms/" + req.params.id);
	});
});



// DELETE ROUTE

app.delete("/rooms/:id", function(req, res){
	//destroy blog
	var t = "DELETE FROM rooms WHERE rooms.id =" + req.params.id;
	connection.query(t, function(err, dRoom){
		if(err) throw err;
		var deleteRoom = dRoom;
		// console.log(foundRoom[0].room_name);
        res.redirect("/rooms");
	});

	//redirect somewhere
 });

// RESERVATION ROUTS

// CREATE RESERVATION
app.get("/rooms/:id/reservation", function(req, res){
	var p = "SELECT id, room_name, room_type, price, image FROM rooms WHERE rooms.id = " + req.params.id;
	connection.query(p, function(err, fRoom){
		if(err) throw err;
		var foundRoom = fRoom;
		// console.log(foundRoom[0].room_name);
        res.render('Reservation', {rm:foundRoom});
	});
});

// POST RESERVATION

app.post("/rooms/:id/reservaton", function(req, res){
	var newCustomer = {
		f_name 	: req.body.f_name,
		l_name 	: req.body.l_name,
		adds   	: req.body.adds,
		age		: req.body.age,
		email 	: req.body.email,
		ph_no 	: req.body.ph_no
	};
	connection.query('INSERT INTO customers SET?', newCustomer, function(err, result){
		if(err) throw err;
		console.log(result.insertId);

		var newReservation = {
			room_id 	: req.params.id,
			customer_id : result.insertId,
			check_in 	: req.body.check_in,
			check_out	: req.body.check_out
		};

		connection.query('INSERT INTO reservation SET?', newReservation, function(err, result2){
			if(err) throw err;
			res.render('bill', {customer:newCustomer, reservation:newReservation, rId: result2.insertId, amount:req.body.price});
		});


	});

});




// LISTENING ROUTE

app.listen(2000, function(){
    console.log("server started");
});


