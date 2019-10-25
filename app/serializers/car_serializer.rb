class CarSerializer < ActiveModel::Serializer
  attributes :id, :make, :model, :year, :mpg_min, :price_max
end
