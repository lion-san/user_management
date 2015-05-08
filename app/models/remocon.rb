class Remocon
  include Mongoid::Document
  field :maker, type: String
  embedded_in :user
  embeds_many :buttons
end
