class Pin < ActiveRecord::Base
  belongs_to :board
  attr_accessible :description, :image, :url, :board_id

  has_attached_file :image,
    styles: {default: '200'},
    path: ":class/:timestamp/:fingerprint.:extension"

  delegate :name, to: :board, prefix: true
  delegate :user, to: :board

  validates :board, presence: true
end
