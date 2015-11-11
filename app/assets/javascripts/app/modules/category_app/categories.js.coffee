TrainingLog.module "CategoryApp", (CategoryApp, App, Backbone, Marionette, $, _) ->

  @startWithParent = false


  CategoryApp.EmptyDashaboardView = Marionette.ItemView.extend

    template: 'category_app/empty_dashboard'

  CategoryApp.Category = Marionette.ItemView.extend
    template: 'category_app/category'
    tagName: 'option'

  CategoryApp.Categories = Marionette.CompositeView.extend

    template: 'category_app/categories'
    childView: CategoryApp.Category
    emptyView: CategoryApp.EmptyDashaboardView
    childViewContainer: 'select'







