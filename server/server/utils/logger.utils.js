module.exports = logger = (data) => {
	if (typeof data === Object) return console.log({ data });

	console.log(data);
};
