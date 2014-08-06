_          = require 'underscore'
Backbone   = require 'backbone'
Backbone.$ = require 'jquery'
data = require 'data.json'

module.exports = Backbone.Collection.extend
	Model 		: Header.Models.NavItems
	url 		: "data.json"
	initialize 	: =>
		console.log "NavItems initialize"
	parse 		: (response) =>
		return response.moduleData
