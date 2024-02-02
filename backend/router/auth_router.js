const express = require("express");
const { sendOTP, verifyOTP } = require("../helpers/auth/otp_helper");
const userModel = require("../model/user_model");
const router = express.Router();


// Phone number, first step
router.get("/phone/check", (req, res) => {

    // if phone number already exists, send sent OTP
    // if phone number do't exists, send OTP, but sent an value to create new user.
    userModel.findOne({ phone: req.query.phone }, (err, user) => {
        if (err) {
            res.status(500).send({ error: "Internal server error." });
        } else if (user) {
            // Phone number already exists, send sent OTP
            sendOTP(req.query.phone).then(() => {
                res.status(200).json({ userExists: true, "message": "OTP sent successfully." });
            });
        } else {

            // Phone number doesn't exists 
            sendOTP(req.query.phone).then(() => {
                res.status(200).send({ userExists: false, "message": "OTP sent successfully." });
            });
        }
    });
});


router.post("/phone/otp", (req, res) => {
    // Called when user enters OTP
    // if OTP is correct, send JWT token

    verifyOTP(req.body.phone, req.body.otp).then((validated) => {
        if (validated) {
            // OTP is correct
            userModel.findOne({ phone: req.body.phone }, (err, user) => {
                // if user exists, send user data
                // if user doesn't exists, create new user and send user data
                if (err) {
                    res.status(500).json({ message: "Internal server error." });
                } else if (user) {
                    res.status(200).json({ userExists: true, user: user });
                }
                else {
                    res.status(200).json({ userExists: false, user: null });
                }
            });
        }else{
            res.status(400).json({ message: "Invalid OTP.", userExists: false , user: null});
        }

    }).catch((err) => {
        res.status(400).json({ message: "Invalid OTP.", userExists: false , user: null });
    });
});


router.post("/phone/signup", (req, res) => {
    // Create new user
    // Called when user enters OTP and other details

    verifyOTP(req.body.user.phone, req.body.otp, req.body.user).then((validated) => {
        if (validated) {
            // Save user to database
            const user = new userModel(req.body.user);
            user.save((err, user) => {
                if (err) {
                    res.status(500).json({ error: "Internal server error." });
                } else {
                    res.status(200).json({ user: user, userExists: true });
                }
            });
        }

    }).catch((err) => {
        res.status(400).json({ error: "Invalid OTP." });
    });
});


module.exports = router;