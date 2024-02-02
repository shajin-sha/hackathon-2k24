const mongoose = require('mongoose');
const db = require("../db/db");

const userModel = new mongoose.Schema({
    phone: { type: String, required: [true, "A phone number is required."], unique: true },
    name: { type: String, required: [true, "A user name is required."] },
    joinedAt: { type: Date, required: false, default: Date.now },

})

module.exports = db.model("User", userModel);
