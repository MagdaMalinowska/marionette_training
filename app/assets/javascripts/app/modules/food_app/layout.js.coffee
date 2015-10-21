TrainingLog.module "FoodApp", (FoodApp, App, Backbone, Marionette, $, _) ->

  @startWithParent = false

  FoodApp.Layout = Marionette.LayoutView.extend

    el: 'body'

    regions:
      main: '#main'

    foods: ->
      collection = new App.Entities.Foods
      collection.fetch
        data:
          page: 1
        success: =>
          @getRegion('main').show(new FoodApp.Foods(collection: collection))


