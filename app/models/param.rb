class Param < ActiveRecord::Base
  attr_accessible :stat, :life, :stan, :weight, :height, :head, :body, :duration, :zahodu

  validates :weight, numericality: { only_integer: true }
  validates :height, numericality: { only_integer: true }
  validates :head, numericality: { only_integer: true }
  validates :body, numericality: { only_integer: true }
  validates :duration, numericality: { only_integer: true }
  validates :zahodu,
            length: {minimum: 2},
            length: {maximum: 250}

  belongs_to :child
end