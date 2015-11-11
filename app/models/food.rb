class Food < ActiveRecord::Base

  belongs_to :meal
  belongs_to :category

  validates :name, presence: true
  validates :proteins, :carbs, :calories, :fats, numericality: {greater_than_or_equal_to: 0}

end
