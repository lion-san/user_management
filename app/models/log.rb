class Log
  include Mongoid::Document
  field :time, type: String
  field :userid, type: String
  field :action, type: String
  field :val1, type: String
  field :val2, type: String
end
