TrainingLog.module "FoodApp", (FoodApp, App, Backbone, Marionette, $, _) ->
  FoodApp.ModalRegion = Marionette.Region.extend
    el: "#modal"