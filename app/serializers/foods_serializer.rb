class FoodsSerializer < ActiveModel::Serializer
  attributes :id, :name, :calories, :proteins, :carbs, :fats
end