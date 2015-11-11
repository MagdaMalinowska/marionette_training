TrainingLog.module "CategoryApp", (CategoryApp, App, Backbone, Marionette, $, _) ->

  @startWithParent = false

  CategoryApp.Layout = Marionette.LayoutView.extend

    el: 'body'

    regions:
      main: '#main'

    categories: ->
      collection = new App.Entities.Categories
      collection.fetch
        data:
          page: 1
        success: =>
          @getRegion('main').show(new CategoryApp.Categories(collection: collection))


