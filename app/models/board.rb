class Board < ActiveRecord::Base
  belongs_to :user
  has_many :pins

  attr_accessible :name, :description, :user_id

  delegate :name, :image_url, to: :user, prefix: true

  validates :name, presence: true
  validates :user, presence: true
end
