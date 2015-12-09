class FoodsController < ApplicationController

  def index
    Rails.logger.info(params[:category_id])
    if params[:category_id]
      category = Category.find(params[:category_id])
      render json: category.foods.all, each_serializer: FoodsSerializer
    else
      render json: Food.all, each_serializer: FoodsSerializer
    end

  end

  def create
    Rails.logger.info(food_params)
    food = Food.new(food_params)
    if food.save
      render json: food, status: 200
    else
      render json: food.errors.full_messages, status: :unprocessable_entity
    end
  end

  private

  def food_params
    params.require(:food).permit(:name, :carbs, :proteins, :calories)
  end


end
