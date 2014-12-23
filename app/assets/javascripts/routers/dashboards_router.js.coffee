class Agoge.Routers.Dashboards extends Backbone.Router
	routes:
		'': 'index'
		'dashboard/:id': 'show'

	initialize: ->
		@collection = new Agoge.Collections.Dashboards()
		@collection.fetch({reset: true})

	index: ->
		view = new Agoge.Views.DashboardsIndex(collection: @collection)
		$("#container").html(view.render().el)

	show: (id)->
		alert "Hello #{id}"
