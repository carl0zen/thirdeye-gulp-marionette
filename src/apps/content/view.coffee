_          = require 'underscore'
Backbone   = require 'backbone'
Backbone.$ = require 'jquery'


module.exports = Backbone.View.extend

	template: require './template'

	initialize: ->

		@render()

	render: ->
		@$el.html @template
			content: 'This is the contents'
			