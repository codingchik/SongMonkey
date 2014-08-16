class Song
  include Mongoid::Document
  field :name, type: String
  field :date, type: Date
  field :text, type: String
  field :location, type: String

  belongs_to :user
end