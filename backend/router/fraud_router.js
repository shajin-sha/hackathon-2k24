const express = require("express");
const fraud_model = require("../model/fraud_model");
const router = express.Router();

//* Get
router.get("/fraud/list/recent", (req, res) => {
    // Get all last 20 frauds
    global.db.collection("fraudreports").find().sort({ _id: -1 }).toArray().then((data) => res.json(data));
});


//*
router.post("/fraud/list/connection", (req, res) => {
    const {mobile} = req.body;
    // Get all frauds for a user
    global.db.collection("fraudreports").find({userMobile: mobile}).toArray().then((data) => res.json(data));

});


//* Add/Update
router.post("/fraud/add", (req, res) => {
    console.log(req.body)
    const { _id } = req.body;
    if (_id) {
        fraud_model.findById(_id)
            .then((existingData) => {
                if (existingData) {
                    fraud_model.findByIdAndUpdate(_id, req.body, { new: true })
                        .then((data) => res.json(data))
                        .catch((error) => res.status(500).json({ error: error.message }));
                } else {
                    res.status(404).json({ error: "Document not found" });
                }
            })
            .catch((error) => res.status(500).json({ error: error.message }));
    } else {
        const create = new fraud_model(req.body);
        create.save()
            .then((data) => res.json(data))
            .catch((error) => res.status(500).json({ error: error.message }));
    }
});

module.exports = router;