TrainingLog.module "FoodApp", (FoodApp, App, Backbone, Marionette, $, _) ->
  FoodApp.NewFoodModal = Marionette.ItemView.extend

    template: 'food_app/new_food'

    events:
      'submit form': 'submit'

    submit: (e) ->
      e.preventDefault()
      model = new App.Entities.Food()
      @$el.find('input[name]').each ->
        model.set @name, @value
      model.save {},
        success: (model) =>
          $("#modal").modal('hide')
          @trigger "model:save", model
        error: ->
          console.log 'Something went wrong while saving the model'

    onRender: ->
      $("#modal").modal "show"