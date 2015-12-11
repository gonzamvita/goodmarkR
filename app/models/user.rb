class User < ActiveRecord::Base
  has_secure_token
  has_secure_token :auth_token
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates_length_of :first_name, :maximum => 25
  validates_length_of :last_name, :maximum => 35

  has_many  :bookmarks
end
