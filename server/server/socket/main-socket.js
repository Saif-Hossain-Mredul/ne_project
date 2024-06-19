const socketio = require('socket.io');
const dataSocket = require('./data-socket');
const incomingEvents = require('./events/incoming-events');

const createSocketServer = (server) => {
	const io = socketio(server);

	io.on(incomingEvents.CONNECTION, (socket) => {
		console.log('One user connected.');
		socket.emit('event', 'you are connected'); //// specifically for arduino or esp boards

		const socketServer = {
			io,
			socket,
		};

		dataSocket(socketServer);
	});

	io.on('error', (err) => {
		console.log(err);
	});
};

module.exports = createSocketServer;
