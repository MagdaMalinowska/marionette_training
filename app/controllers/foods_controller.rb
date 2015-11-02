class FoodsController < ApplicationController

  def index
    render json: Food.all, each_serializer: FoodsSerializer
  end

  def create
    Rails.logger.info(food_params)
    food = Food.new(food_params)
    if food.save
      render json: food, status: 200
    else
      render json: food.errors, status: :unprocessable_entity
    end
  end

  private

  def food_params
    params.require(:food).permit(:name, :carbs, :proteins, :calories)
  end


end