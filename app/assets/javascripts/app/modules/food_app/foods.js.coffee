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
      console.log('new')
     foodEdit: ->
      console.log('edit')
     foodDestroy: ->
      console.log('destroy')
     foodShow: ->
      console.log('show')

