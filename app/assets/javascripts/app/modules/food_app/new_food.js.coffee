TrainingLog.module "FoodApp", (FoodApp, App, Backbone, Marionette, $, _) ->
  FoodApp.NewFoodModal = Marionette.ItemView.extend

    render: ->
      Backbone.Validation.bind(@)


    template: 'food_app/new_food'

    events:
      'submit form': 'submit'

    submit: (e) ->
      e.preventDefault()
      model = new App.Entities.Food()
      that = @
      @$el.find('input[name]').each ->
        model.set @name, @value
      model.save {},
        success: (model) =>
          @trigger 'modal:close'
          @trigger "model:save", model
        error: (model, xhr, options) ->
          that.$el.find('.errors').text(xhr.responseText)


    valid: (view, attr, selector) =>
      @$("[data-validation=#{attr}]")
      .removeClass('invalid')
      .addClass('valid')

    invalid: (view, attr, error, selector) =>
      @failure(@model)
      @$("[data-validation=#{attr}]")
      .removeClass('valid')
      .addClass('invalid')