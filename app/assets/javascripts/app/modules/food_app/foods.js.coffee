TrainingLog.module "FoodApp", (FoodApp, App, Backbone, Marionette, $, _) ->

  @startWithParent = false

  FoodApp.EmptyDashaboardView = Marionette.ItemView.extend

    template: 'food_app/empty_dashboard'

  FoodApp.Food = Marionette.ItemView.extend

    tagName: 'tr'
    template: 'food_app/food'


  FoodApp.Foods = Marionette.CompositeView.extend

    template: 'food_app/foods'
    childView: FoodApp.Food
    emptyView: FoodApp.EmptyDashaboardView

    ui:
      td: 'td'

