class Card < ActiveRecord::Base
  attr_accessible :back, :front
  belongs_to :deck
end
