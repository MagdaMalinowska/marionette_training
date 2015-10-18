TrainingLog.module "FoodApp", (FoodApp, App, Backbone, Marionette, $, _) ->

  @startWithParent = false

  FoodApp.Layout = Marionette.LayoutView.extend

    el: 'body'

    regions:
      main: '#main'

    foods: ->
      console.log(App.Entitites)
      collection = new App.Entities.Foods
      console.log collection
      collection.fetch
        data:
          page: 1
        success: =>
          console.log('layout success')
          @getRegion('main').show(new FoodApp.Foods(collection: collection))


