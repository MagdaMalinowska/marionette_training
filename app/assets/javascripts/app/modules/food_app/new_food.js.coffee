TrainingLog.module "FoodApp", (FoodApp, App, Backbone, Marionette, $, _) ->
  console.log('new_food')
  FoodApp.NewFoodModal = Marionette.ItemView.extend

    template: 'food_app/new_food'

    onRender: ->
      $("#modal").modal "show"

