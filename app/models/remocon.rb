class Remocon
  include Mongoid::Document
  field :maker, type: String
  field :buttons, type: Array
  #embedded_in :user
 # embeds_many :buttons
end
