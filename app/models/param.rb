class Param < ActiveRecord::Base
  attr_accessible :stat, :life, :stan, :weight, :height, :head, :body, :duration, :zahodu


  validates :zahodu,
            length: {minimum: 2},
            length: {maximum: 250}

  belongs_to :child
end