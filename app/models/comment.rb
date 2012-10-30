class Comment < ActiveRecord::Base
  belongs_to :pin
  belongs_to :user

  attr_accessible :body, :pin

  validates :user, presence: true
  validates :pin, presence: true

  delegate :name, :image_url, to: :user, prefix: true
end
