class User
  include Mongoid::Document
  include ActiveModel::SecurePassword

  field :name, type: String
  field :email, type: String
  field :location, type: String
  field :password_digest, type:String
  field :password_confirmation, type:String

  validates :name, presence: true
  validates :email, presence: true
  validates_uniqueness_of :email

  has_many :songs
  # following only works with Active Record, not used in this app
  # has_many :likes, :through :songs

  has_secure_password
end
