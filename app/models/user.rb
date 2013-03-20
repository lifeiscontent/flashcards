class User < ActiveRecord::Base
  attr_accessible :username, :password, :password_confirmation
  has_many :decks
  has_secure_password
  validates :password, presence: { on: :create }
end
