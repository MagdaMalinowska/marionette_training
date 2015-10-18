class FoodsSerializer < ActiveModel::Serializer
  attributes :id, :calories, :proteins, :carbs, :fats, :name
end