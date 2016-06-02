# index.coffee
# index.coffee
Logger = require('vair_log').Logger
restify = require 'restify'
domain = require 'domain'
ServiceCtl = require './service/service-facade'
config = require './config'


log = Logger.getLogger()

d = domain.create()

d.on 'error', (err) ->
	# Global Error Handling
	log.error "Error occur: #{tosource err}"

d.run =>
	server = restify.createServer {
		name: "#{config.server.name}",
		version: "#{config.server.version}"
	}

	server.use restify.acceptParser server.acceptable
	server.use restify.queryParser()
	server.use restify.bodyParser()

	server.get "/hello/world/:who", (req, res, next) ->
		log.info "retrieve request with params: #{JSON.stringify req.params}"
		who = req.params.who


		# coding here
		svrCtl = new ServiceCtl

		res.json {code: "0000", result: "#{svrCtl.helloWorld()} #{who}" }

	server.listen config.server.port, () ->
		log.info "#{server.name} is listen at #{server.url}"