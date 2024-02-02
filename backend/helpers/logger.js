const winston = require('winston');

const logger = winston.createLogger({
  level: 'info',
  format: winston.format.json(),
    format: winston.format.combine(
        winston.format.colorize(),
        winston.format.simple(),
        winston.format.timestamp(),
        winston.format.align(),
        winston.format.printf((info) => {
            const {
                timestamp, level, message, ...args
            } = info;

            const ts = timestamp.slice(0, 19).replace('T', ' ');
            return `${ts} [${level}]: ${message} ${Object.keys(args).length ? JSON.stringify(args, null, 2) : ''}`;
        })

    ),
  transports: [
    //
    // - Write all logs with importance level of `error` or less to `error.log`
    // - Write all logs with importance level of `info` or less to `combined.log`
    //
    new winston.transports.File({ filename: './logs/error.log', level: 'error' }),
    new winston.transports.File({ filename: './logs/combined.log' }),
  ],
});

//
// If we're not in production then log to the `console` with the format:
// `${info.level}: ${info.message} JSON.stringify({ ...rest }) `
//
if (process.env.NODE_ENV !== 'production') {
  logger.add(new winston.transports.Console({
    format: winston.format.simple(),
  }));
}


module.exports = logger;