TrainingLog.module "Entities", (Entitites, App, Backbone, Marionette, $, _) ->

  Entitites.Food = Backbone.Model.extend

    urlRoot: '/foods'

    defaults:
      name: 'unknown'
      carbs: 0
      proteins: 0
      calories: 0
      id: null

    validation:
      name:
        required: true
        msg: 'Required!'
      carbs:
        min: 0
      proteins:
        min: 0
      calories:
        min: 0

  Entitites.Foods = Backbone.Collection.extend

    model: Entitites.Food

    url: '/foods'

    parse: (data) ->
      data.foods