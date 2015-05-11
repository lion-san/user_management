class Remocon
  include Mongoid::Document
  field :userid, type: String
  field :maker, type: String
  #field :buttons, type: Array
  #embedded_in :user
  embeds_many :buttons
end
