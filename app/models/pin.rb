class Pin < ActiveRecord::Base
  belongs_to :board
  attr_accessible :description, :image, :url

  has_attached_file :image
end
