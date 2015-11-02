TrainingLog.module "FoodApp", (FoodApp, App, Backbone, Marionette, $, _) ->

  @startWithParent = false


  FoodApp.EmptyDashaboardView = Marionette.ItemView.extend

    template: 'food_app/empty_dashboard'

  MyView = Marionette.ItemView.extend

    template: 'food_app/new_food'

  FoodApp.Food = Marionette.ItemView.extend

    tagName: 'tr'
    template: 'food_app/food'

#  FoodApp.New = Marionette.Region.extend
#
#    el: '#modal'
#    template: JST['food_app/new_food']
#    onRender: ->
#      console.log('NEWWWWW')
#      $("#modal").modal "show"

  FoodApp.Foods = Marionette.CompositeView.extend

    template: 'food_app/foods'
    childView: FoodApp.Food
    emptyView: FoodApp.EmptyDashaboardView
    childViewContainer: 'tbody'

    ui:
      foodNew: 'a.new'
      foodEdit: 'a.edit'
      foodDestroy: 'a.destroy'
      foodShow: 'a.show'
      td: 'td'

    events:
      'click @ui.foodNew': 'foodNew'
      'click @ui.foodEdit': 'foodEdit'
      'click @ui.foodDestroy': 'foodDestroy'
      'click @ui.foodShow': 'foodShow'



     foodNew: ->
      newFoodModalView = new FoodApp.NewFoodModal
      newFoodModalView.on 'model:save', (model) =>
        @collection.add model
      modalRegion = new FoodApp.ModalRegion
      console.log('sss')

      modalRegion.show newFoodModalView


     foodEdit: ->
      console.log('edit')
     foodDestroy: ->
      console.log('destroy')
     foodShow: ->
      console.log('show')





