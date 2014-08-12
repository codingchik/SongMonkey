class User
  include Mongoid::Document
  field :name, type: String
  field :email, type: String
  field :location, type: String

  has_many :songs
  # following only works with Active Record, not used in this app
  # has_many :likes, :through :songs
end
