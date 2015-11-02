TrainingLog.module "Entities", (Entitites, App, Backbone, Marionette, $, _) ->

  Entitites.Food = Backbone.Model.extend

    urlRoot: '/foods'

    defaults:
      name: 'unknown'
      carbs: 0
      proteins: 0
      calories: 0
      id: null

  Entitites.Foods = Backbone.Collection.extend

    model: Entitites.Food

    url: '/foods'

    parse: (data) ->
      data.foods