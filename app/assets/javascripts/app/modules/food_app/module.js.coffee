TrainingLog.module "FoodApp", (FoodApp, App, Backbone, Marionette, $, _) ->

  @startWithParent = false

  startRouter =  ->
    new Marionette.AppRouter

      controller:
        foods: ->
          console.log('food')
          view = new FoodApp.Layout
          console.log view
          view.foods()

      appRoutes:
        '(/)': 'foods'
        'dashboard(/)': 'foods'


  FoodApp.start = ->
    startRouter()
    console.log('start')
    Backbone.history.loadUrl Backbone.history.getFragment()