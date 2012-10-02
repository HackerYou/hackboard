class Pin < ActiveRecord::Base
  belongs_to :board
  attr_accessible :description, :image, :url
end
