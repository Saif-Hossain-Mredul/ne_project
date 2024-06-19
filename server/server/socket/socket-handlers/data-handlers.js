const OutgoingEvents = require('../events/outgoing-events');

const newData = (server, data) => {
	server.io.emit(OutgoingEvents.NEW_DATA_FROM_SERVER, data);
};

module.exports = { newData };
