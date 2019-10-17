class ApartmentSerializer < ActiveModel::Serializer
  attributes :id, :country, :city, :price, :ski_distance, :ocean_distance, :airport_distance
  has_one :user
end
