class Button
  include Mongoid::Document
  field :btnId, type: String
  field :btnCode, type: String
  embedded_in :remocon
end
