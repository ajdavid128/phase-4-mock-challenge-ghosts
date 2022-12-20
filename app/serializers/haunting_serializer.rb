class HauntingSerializer < ActiveModel::Serializer
  attributes :id
  
  has_one :ghost
  has_one :haunted_house
end
