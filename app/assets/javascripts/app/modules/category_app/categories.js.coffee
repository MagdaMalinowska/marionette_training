TrainingLog.module "CategoryApp", (CategoryApp, App, Backbone, Marionette, $, _) ->

  @startWithParent = false

  CategoryApp.EmptyDashaboardView = Marionette.ItemView.extend

    template: 'category_app/empty_dashboard'

  CategoryApp.Category = Marionette.ItemView.extend
    template: 'category_app/category'
    tagName: 'li'

  CategoryApp.Categories = Marionette.CompositeView.extend

    template: 'category_app/categories'
    childView: CategoryApp.Category
    emptyView: CategoryApp.EmptyDashaboardView
    childViewContainer: 'ul'

    ui:
      input: '.select-input'
      selectItem: 'li'

    events:
      'click @ui.input': 'showDropdown'
      'click @ui.selectItem': 'selectItem'

    showDropdown: ->
      @$('.hidden').removeClass('hidden')

    selectItem: (e) ->
      @$('ul').addClass('hidden')
      name= e.target.innerHTML
      console.log(e.target)
      @$('.select-input').html(name)
      id = $(e.target).attr('data-id')
      that = @
      $.ajax
        type: 'GET'
        dataType: 'json'
        url: "/categories/#{id}/foods"
        success: (data) ->
          collection = new App.Entities.Foods data.foods
          FoodsView = new CategoryApp.Foods(collection: collection)
          region = new Backbone.Marionette.Region({el:'#foods'})
          region.show FoodsView

  CategoryApp.Food = Marionette.ItemView.extend

    template: 'category_app/food'

  CategoryApp.Foods = Marionette.CompositeView.extend

    template: 'category_app/foods'
    childView: CategoryApp.Food
    childViewContainer: '.foods_container'



