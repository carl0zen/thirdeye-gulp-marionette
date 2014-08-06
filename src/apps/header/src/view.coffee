_          = require 'underscore'
Backbone   = require 'backbone'
Backbone.$ = require 'jquery'



module.exports = Backbone.View.extend

	template: require './template'

	initialize: ->

		@render()

	render: ->
		@$el.html @template
			name: 'Batch CV Import'
			navItems: [
				{name:'Architecture',url:'#drag'},
				{name:'Apps',url:'#apps'},
				{name:'Manual Entry',url:'#manual'},
				{name:'View Results',url:'#results'}

			]