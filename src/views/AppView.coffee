Marionette = require 'marionette'

module.exports = class AppView extends Marionette.Layout
	template: require './templates/app'
	el: '#app'