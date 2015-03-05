class User < ActiveRecord::Base
  has_secure_password
  has_many :recipes
  has_many :microposts, dependent: :destroy

  validates :email, presence: true
  validates :name, presence: true
end
