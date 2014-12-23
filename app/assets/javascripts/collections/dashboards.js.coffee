class Agoge.Collections.Dashboards extends Backbone.Collection

  model: Agoge.Models.Dashboard
  url: ()->
  	"/users/#{$('#userinfo').val()}.json"
  parse: (res)->
  	return res.topics
