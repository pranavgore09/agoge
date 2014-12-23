class Agoge.Views.DashboardsTopicRequest extends Backbone.View
	template: JST['dashboards/topicRequest']

	render: ->
	  $(@el).html(@template(topic_list: @collection))
  	this