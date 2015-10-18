TrainingLog.module "FoodApp", (FoodApp, App, Backbone, Marionette, $, _) ->

  @startWithParent = false

  FoodApp.Router = Marionette.AppRouter.extend

    appRoutes:
      '(/)': 'foods'
      'dashboard(/)': 'foods'
      'new_food_path(/)': "new_food"

  API =
    foods: ->
      console.log('food')
      view = new FoodApp.Layout
      console.log view
      view.foods()

    new_food: ->
      console.log('new')

  App.addInitializer ->
    FoodApp.ModuleRouter = new FoodApp.Router
      controller: API