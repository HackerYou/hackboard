class Board < ActiveRecord::Base
  belongs_to :user
  attr_accessible :name, :user_id

  validates :name, presence: true
end
