TrainingLog.module "FoodApp", (FoodApp, App, Backbone, Marionette, $, _) ->

  @startWithParent = false

  FoodApp.Router = Marionette.AppRouter.extend

    appRoutes:
      '/': 'foods'
      'dashboard(/)': 'foods'

  API =
    foods: ->
      console.log('food')
      view = new FoodApp.Layout
      console.log view
      view.foods()

  App.addInitializer ->
    FoodApp.ModuleRouter = new FoodApp.Router
      controller: API