# msgbus decoupled from app
Wreqr 		= require 'wreqr'

window.msgBus = {
	'reqres'		: new Wreqr.RequestResponse()
	'commands'		: new Wreqr.Commands()
	'events'		: new Wreqr.EventAggregator()
}

module.exports =  msgBus