class Pin < ActiveRecord::Base
  belongs_to :board
  has_many :comments
  attr_accessible :description, :image, :url, :board_id

  has_attached_file :image, styles: {default: '200', full: '600'}

  delegate :name, to: :board, prefix: true
  delegate :user, to: :board
  delegate :name, :image_url, to: :user, prefix: true

  validates :board, presence: true
  validates :image, presence: true

  def self.latest
    order("updated_at DESC")
  end
end
