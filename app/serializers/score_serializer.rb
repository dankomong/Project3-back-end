class ScoreSerializer < ActiveModel::Serializer
  attributes :id, :score
  belongs_to :player
end
