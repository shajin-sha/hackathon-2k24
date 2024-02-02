const express = require("express");
const logger = require("./helpers/logger");
const bodyParser = require("body-parser");
const cors = require("cors");

const mongoose = require("mongoose");
const fraud_router = require("./router/fraud_router")
const auth_router = require("./router/auth_router")


// Define the Express app
const app = express();


// Define middleware
app.use(bodyParser.urlencoded({ extended: true }));
app.use(bodyParser.json());
app.use(cors());

app.use(express.static("public"));


// Connect to MongoDB
const mongoDB = "mongodb://localhost:27017/hackathon";
mongoose.connect(mongoDB, { useNewUrlParser: true, useUnifiedTopology: true });
const db = mongoose.connection;
global.db = db;
// Connect to MongoDB



// console log the error on connecting
db.on("error", (err) => logger.error(err));
db.once("open", () => logger.info("Connected to database."));


const IP_ADDRESS = '0.0.0.0'; // Listen on all network interfaces
const PORT = 3000; // Listen on port 3000

// Start the server
app.listen(PORT, IP_ADDRESS, () => {
    logger.info(`Server started on port ${PORT}`);
});


app.use("/api", fraud_router);
app.use("/api", auth_router);
