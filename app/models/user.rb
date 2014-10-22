class User
  include Mongoid::Document
  include ActiveModel::SecurePassword
  include Mongoid::Paperclip
  

  field :name, type: String
  field :email, type: String
  field :location, type: String
  field :password_digest, type:String
  

  has_secure_password
  has_many :songs
  has_mongoid_attached_file :image 
  validates_attachment_content_type :image, content_type:["image/jpg", "image/jpeg", "image/png", "image/gif"]
  
  validates :name, presence: true
  validates :email, presence: true
  validates_uniqueness_of :email

end

