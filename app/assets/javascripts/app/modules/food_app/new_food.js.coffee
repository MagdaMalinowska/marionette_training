TrainingLog.module "FoodApp", (FoodApp, App, Backbone, Marionette, $, _) ->
  FoodApp.NewFoodModal = Marionette.ItemView.extend

#    render: ->
#


    template: 'food_app/new_food'

    events:
      'submit form': 'submit'
      'change input': 'validate'

    submit: (e) ->
      e.preventDefault()
      model = new App.Entities.Food()
      that = @
      @$el.find('input[name]').each ->
        model.set @name, @value
#        if model.preValidate @name, @value
#          @invalid @, @name
#        else
#          @valid @, @name
      Backbone.Validation.bind @,
        valid: @valid,
        invalid: @invalid
        model: model
      console.log(errorMessage)
      errorMessage = model.preValidate(@name, @value)
      @invalid if errorMessage
      if model.isValid(true)
        @save(model)



    save: (model)->
      model.save {},
        success: (model) =>
          @trigger 'modal:close'
          @trigger "model:save", model
        error: (model, xhr, options) ->
          console.log('error')

    valid: (view, attr, selector) =>
      console.log('valid')
      $el=$("[name=#{attr}]")
      $group = $el.closest('.form-group')
      $group.removeClass('has-error');
      $group.find('.help-block').html('').addClass('hidden');


    invalid: (view, attr, error, selector) =>
      console.log(@)
      $el=$("[name=#{attr}]")
      $group = $el.closest('.form-group')
      $group.addClass('has-error');
      $group.find('.help-block').html(error).removeClass('hidden');

