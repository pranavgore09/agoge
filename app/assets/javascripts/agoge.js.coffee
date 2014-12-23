window.Agoge =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  initialize: ->
  	new Agoge.Routers.Dashboards()
  	Backbone.history.start()

$(document).ready ->
  Agoge.initialize()
