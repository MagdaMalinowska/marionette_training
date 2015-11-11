class CategoriesController < ApplicationController

  def index
    render json: Category.all, each_serializer: CategoriesSerializer
  end

end