TrainingLog.module "Entities", (Entitites, App, Backbone, Marionette, $, _) ->

  Entitites.Food = Backbone.Model.extend

    urlRoot: '/foods'

    defaults:
      name: 'unknown'
      carbs: 'unknown'
      proteins: 'unknown'
      calories: 'unknown'
      id: null

  Entitites.Foods = Backbone.Collection.extend

    model: Entitites.Food

    url: '/foods'

    parse: (data) ->
      @totalPages = data.total_pages
      @perPage = data.limit_value
      @page = data.current_page
      data.foods

    onePage: ->
      +@totalPages <= 1

    lastPage: ->
      +@page == +@totalPages