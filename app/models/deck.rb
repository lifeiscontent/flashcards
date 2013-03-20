class Deck < ActiveRecord::Base
  attr_accessible :name
  has_many :cards

  def self.current
  	order("created_at DESC")
  end
end