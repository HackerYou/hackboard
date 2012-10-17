class Board < ActiveRecord::Base
  belongs_to :user
  has_many :pins

  attr_accessible :name, :user_id

  validates :name, presence: true
end
