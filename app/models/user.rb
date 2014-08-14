class User
  include Mongoid::Document
  include ActiveModel::SecurePassword

  field :name, type: String
  field :email, type: String
  field :location, type: String
  field :password_digest, type:String
  has_secure_password

  validates :name, presence: true
  validates :email, presence: true
  validates_uniqueness_of :email

  has_many :songs

  
end

