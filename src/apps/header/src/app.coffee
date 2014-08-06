console.log 'awe'
_          		= require 'underscore'
Backbone   		= require 'backbone'
Backbone.$ 		= require 'jquery'
View  			= require './view'
MsgBus			= require '../../../msgbus'
#Controller 		= require './list/controller'

#Controller = require './controller'

API = 
	list: ->
		new Controller
			region: msgBus.reqres.request "header:region"

msgBus.commands.setHandler "start:header:module", ->
	API.list()


module.exports = View

