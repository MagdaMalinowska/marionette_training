TrainingLog.module "Entities", (Entitites, App, Backbone, Marionette, $, _) ->

  Entitites.Category = Backbone.Model.extend

    urlRoot: '/categories'

    defaults:
      name: 'unknown'


  Entitites.Categories = Backbone.Collection.extend

    model: Entitites.Category

    url: '/categories'

    parse: (data) ->
      data.categories