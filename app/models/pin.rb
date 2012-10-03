class Pin < ActiveRecord::Base
  belongs_to :board
  attr_accessible :description, :image, :url, :board_id

  has_attached_file :image, styles: {default: '200'}

  delegate :name, to: :board, prefix: true,
    allow_nil: true # TODO remove
end
