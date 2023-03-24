const morgan = require('morgan');
const json = require('morgan-json');
const logger = require('../utils/apps/logger');
const appConfig = require('../config/config');


// Configure HTTP logger
let httpLoggingFormat = null;
let httpLogger = null;

// Adding userId to logs
morgan.token('userId', req => {
  let userId = "";
  if ('user' in req && '_id' in req.user) {
    userId = req.user._id;
  }

  return userId;
});

if (appConfig.logLevel === 'none') {
    httpLoggingFormat = json({
        method: ':method',
        url: ':url',
        status: ':status',
        contentLength: ':res[content-length]',
        // The time between the request coming into morgan and when the response headers are written, in milliseconds.
        responseTime: ':response-time',
        ua: ':user-agent',
        // The time between the request coming into morgan and when the response has finished being written out to the connection, in milliseconds.
        totalTime: ':total-time',
        remoteUser: ':remote-user',
        remoteAddr: ':remote-addr',
        referrer: ':referrer',
        httpVersion: ':http-version',
        timestamp: ':date[iso]',
        userId: ':userId'
    });

    httpLogger = morgan(httpLoggingFormat, {
        stream: {
          write: message => {
            const {
              method,
              url,
              status,
              contentLength,
              responseTime,
              ua,
              totalTime,
              remoteAddr,
              remoteUser,
              referrer,
              httpVersion,
              timestamp,
              userId
            } = JSON.parse(message);
      
            logger.info('Appserver access log [DEV]', {
              timestamp,
              userId,
              method,
              url,
              status: Number(status),
              contentLength,
              responseTime: Number(responseTime),
              userAgent: ua,
              totalTime,
              remoteAddr,
              remoteUser,
              referrer,
              httpVersion
            });
          }
        }
    });

} else {
    httpLoggingFormat = json({
        method: ':method',
        url: ':url',
        status: ':status',
        contentLength: ':res[content-length]',
        responseTime: ':response-time',
        ua: ':user-agent',
        remoteUser: ':remote-user',
        remoteAddr: ':remote-addr',
        referrer: ':referrer',
        httpVersion: ':http-version',
        timestamp: ':date[iso]',
        userId: ':userId'
    });

    httpLogger = morgan(httpLoggingFormat, {
        stream: {
          write: message => {
            const {
              method,
              url,
              status,
              contentLength,
              responseTime,
              ua,
              remoteAddr,
              remoteUser,
              httpVersion,
              timestamp,
              userId
            } = JSON.parse(message);
      
            logger.info('Appserver access log', {
              timestamp,
              userId,
              method,
              url,
              status: Number(status),
              contentLength,
              responseTime: Number(responseTime),
              userAgent: ua,
              remoteAddr,
              remoteUser,
              httpVersion
            });
          }
        }
    });
}

module.exports = httpLogger;
