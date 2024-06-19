require('dotenv').config();
const express = require('express');
const http = require('http');
const cors = require('cors');
const createSocketServer = require('./socket/main-socket');

const port = process.env.PORT || 3000;
const app = express();
const server = http.createServer(app);

app.use(
	cors({
		origin: '*',
	})
);

app.get('*', (req, res) => {
	res.send(
		'This is a boilerplate for node-socketio.\n For connection: http://localhost:PORT/data'
	);
});

// creating socket server
createSocketServer(server);

server.listen(port, () => {
	console.log('Server started. Listening to: http://localhost:' + port);
});
