// require these by npm install plugin-name
var express = require("express");
global.mongoose = require("mongoose");
global.path = require("path");
// var monkey = require("monkey");
var bodyParser = require("body-parser");
var methodOverride = require("method-override");

// connect to database
global.db  = mongoose.connect("mongodb://localhost/bananas");
// console.log(db);

// get app object
var app = express();

// config app
app.use(bodyParser());
app.use(methodOverride());
app.use(express.static(path.join(__dirname, "public")));

console.log(path.join("path", "to", "file"));
// console.log("app", app);

// routes
var monkeysController = require(path.join(__dirname, "monkeysController"));

app.get("/api/monkeys", monkeysController.index);
app.post("/api/monkeys", monkeysController.create);
app.put("/api/monkeys/:id", monkeysController.update);
app.delete("/api/monkeys/:id", monkeysController.delete);

app.listen(8000, function() {
  console.log("app is listening on port 8000");
})


