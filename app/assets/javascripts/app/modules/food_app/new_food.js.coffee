TrainingLog.module "FoodApp", (FoodApp, App, Backbone, Marionette, $, _) ->
  FoodApp.NewFoodModal = Marionette.ItemView.extend

    template: 'food_app/new_food'

    onRender: ->
      $("#modal").modal "show"

