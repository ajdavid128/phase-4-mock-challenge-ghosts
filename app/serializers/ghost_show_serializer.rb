class GhostShowSerializer < ActiveModel::Serializer
  attributes :id, :name, :age_at_death

  has_many :haunted_houses
end
