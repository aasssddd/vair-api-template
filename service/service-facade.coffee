# service-facade.coffee
require_tree = require 'require-tree'
coreService = require_tree './rawService'


class ServiceCtl
	# call raw service with raw
	helloWorld: =>
		return coreService.helloworld()

module.exports = ServiceCtl