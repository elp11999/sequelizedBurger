//
// Eat-Da-Burger!
//
// Whenever a user submits a burger's name, the app will display the burger on the left
// side of the page -- waiting to be devoured.
// Each burger in the waiting area also has a Devour it! button. When the button is clicked,
// the burger will move to the right side of the page.
// The app will store every burger in a database, whether devoured or not.
//
// burger_controller.js - Express routes library for the Eat-Da-Burger application
// 

// Load Express library
var express = require("express");

// Create Express router object
var router = express.Router();

// Load Models library
var db = require("../models");

// Setup the Express route to get all burgers in the database
router.get("/", function(req, res) {
  db.burgers.findAll({}).then(function (results) {
    var burgerObject = {
      burgers: results
    };
    res.render("index", burgerObject);
  });
});

// Setup the Express route to add a new burger
router.post("/api/burgers", function(req, res) {
  db.burgers.create({
    burger_name: req.body.burger_name,
    devoured: false,
    createdAt: Date.now(),
    updatedAt: Date.now()
  }).then(function (results) {
    res.json(results);
  });
});

// Setup the Express route to update a burger
router.put("/api/burgers/:id", function(req, res) {
  console.log(req.body);
  var input = {
    devoured: true,
    updatedAt: Date.now()
  }
  db.burgers.update(input,
    { where: { id: req.params.id } }).then(function (results) {
      res.json(results);
    });
});

// Export router object
module.exports = router;
