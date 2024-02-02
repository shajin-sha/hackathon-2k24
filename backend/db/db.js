const mongoose = require('mongoose');
const logger = require('../helpers/logger');

const connectionString = `mongodb://localhost:27017/hackathon`;

// Connect to MongoDB using Mongoose
mongoose.connect(connectionString, {
    useNewUrlParser: true,
    useUnifiedTopology: true,
  })
  .then(() => {
    logger.info('Connected to database');
  })
  .catch((err) => {
    logger.error("Couldn't connect to database");
    process.exit(1);
  });

// Access the connected Mongoose instance
const db = mongoose.connection;

// Export the Mongoose connection
module.exports = db;
