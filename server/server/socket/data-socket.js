const loggerUtils = require('../utils/logger.utils');
const incomingEvents = require('./events/incoming-events');
const dataHandlers = require('./socket-handlers/data-handlers');

const dataSocket = (server) => {
	server.socket.on(incomingEvents.NEW_DATA_TO_SERVER, (data) => {
		loggerUtils({ event: incomingEvents.NEW_DATA_TO_SERVER, data });

		dataHandlers.newData(server, data);
	});

	server.socket.on(incomingEvents.DISCONNECT, () =>
		console.log('One user disconnected') 
	);
};

module.exports = dataSocket;
