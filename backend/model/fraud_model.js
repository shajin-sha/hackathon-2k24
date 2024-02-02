const mongoose = require('mongoose');
const db = require("../db/db");

const fraudModel = new mongoose.Schema({
    title: { type: String, required: [true, "A title is wanted"]},
    description: { type: String, required: [true, "description is required."] },
    createdAt: { type: Date, required: false, default: Date.now },
    createUpdated: { type: Date, required: false, default: Date.now },
    affectedCount:{type: Number, required: false, default: 1},
    inappropriateCount:{type: Number, required: false, default: 0},
    type:{type: String, required: false, default: "SMS"},
    impact:{type: Number, required: false, default: 0.1},
    userMobile:{type:String, required: false}
})

module.exports = db.model("fraudReport", fraudModel);
