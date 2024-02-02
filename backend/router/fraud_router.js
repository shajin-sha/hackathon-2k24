const express = require("express");
const fraud_model = require("../model/fraud_model");
const router = express.Router();

//* Get
router.get("/fraud/list/recent", (req, res) => {
    // Get all last 20 frauds
    fraud_model.find({}, (err, frauds) => {
        if (err) {
            res.status(500).json({ message: "Internal server error." });
        } else {
            res.status(200).json({fraudsList: frauds});
        }
    }).limit(20);

});


//*
router.get("/fraud/list/connection", (req, res) => {
    const {mobile} = req.body;
    // Get all last 20 frauds
    fraud_model.find({userMobile:mobile}, (err, frauds) => {
        if (err) {
            res.status(500).json({ message: "Internal server error." });
        } else {
            res.status(200).json({fraudsList: frauds});
        }
    }).limit(20);

});


//* Add/Update
router.post("/fraud/add", (req, res) => {
    const {fraudModel} = req.body;
    create = new fraud_model(fraudModel);

    create.save((err, fraud) => {
        if (err) {
            res.status(500).json({ message: "Internal server error." });
        } else {
            res.status(200).json({fraud: fraud});
        }
    });
});

module.exports = router;