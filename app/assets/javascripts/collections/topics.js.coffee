class Agoge.Collections.Topics extends Backbone.Collection

  model: Agoge.Models.Topic
  url: ()->
  	"/topics.json"
