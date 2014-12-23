class Agoge.Views.DashboardsIndex extends Backbone.View

  template: JST['dashboards/index']

  events: {
  	'click .requestNow' : "requestNow"
  	'click .edit': "editRequest"
  }

  editRequest: (e)->
  	console.log(this,e)

  requestNow: (e) ->
  	@all_topics = new Agoge.Collections.Topics()
  	do(	options = success:(collection, response, options)=>
  									console.log(collection, @requested)
  									do( view = undefined
  											,requested_ids = []
  										) =>
			  											requested_ids = _.pluck(@requested, 'id')
			  											collection.remove(requested_ids)
															view = new Agoge.Views.DashboardsTopicRequest(collection: collection)
															@$el.find(".topic_request").html(view.render().el)
  								,error: (collection, response, options)=>
  									console.log("unable to fetch topics ", collection, response, options)
  			) =>
  				@all_topics.fetch(options)

  initialize: ->
  	@collection.on('reset', @render, this)

  render: ->
  	if(@collection.length)
  		@attended = _.filter(@collection.models,(mod) -> mod.get('attended'))
  		@requested = _.filter(@collection.models,(mod) -> mod.get('attended')==false)
	  	$(@el).html(@template({attended:@attended, requested: @requested}))
	  	$('.datatable').DataTable({responsive: true})
	  else
	  	$(@el).html(@template({attended:[], requested: []}))
  	this
