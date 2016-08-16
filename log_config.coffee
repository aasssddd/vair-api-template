# log_config.coffee
# log_config.coffee
module.exports = 
	console: 
		level: "info"
	file:
		level: "info"
		name: "server.log"
		path: "./"
	logentries: {
		"level": "info",
		"token": "put your logentries token here"
	}
