
_          		= require 'underscore'
Backbone   		= require 'backbone'
$ 				= require 'jquery'
Marionette   	= require 'marionette'

View  			= require './view'
MsgBus			= require '../../../msgbus'
#Controller 		= require './list/controller'

#Controller = require './controller'


App = {
	Views:{},
	Controllers:{},
	Collections: {},
	Models: {}
}

App.Router = Backbone.Router.extend
	routes:
		'':'home'
		'art': 'renderArt'
	home: ()->
		console.log 'youre home'
		$('#art-link').click(()->
			console.log 'click'
		)
	renderArt: ()->
		$('.bg > div').hide(600)
		$('.bg1').fadeIn(600)

center =[
	{x: 120, y:97}
	{x: 50, y:30}
	{x: 120, y:0}
	{x: 100, y:77}
	{x: 120, y:97}

	]
App.Views.Nav = Backbone.View.extend
	el: '#header'
	events:
		'click #nav a': 'renderBackground'
		'click #logo' : 'zoomOut'
	zoomOut: (e)->
		$('.bg > div').animate
			'background-size': '100%'
			'background-position-x': 'center'
			'background-position-y':0
	renderBackground: (e)->
		index = $(e.currentTarget).parent().index()
		bgpos = '' +center[index].x+'% '+ center[index].y+'%'
		console.log bgpos
		$('.bg > div').fadeOut(300)
		$('.bg'+index).fadeIn(270)
		$('.bg > div').animate
			'background-size': '150%'
			'background-position-x': center[index].x+'%'
			'background-position-y': center[index].y+'%'

App.Views.Art = Backbone.View.extend
	el:'#content'
	render:->
		_.template($('#contentTpl').html(),{
				
			});


router = new App.Router()
nav = new App.Views.Nav()

        

API = 
	list: ->
		new Controller
			region: msgBus.reqres.request "header:region"
	renderArt: ->
		console.log 'somethings are cool'

msgBus.commands.setHandler "start:header:module", ->
	API.renderArt()


module.exports = View

