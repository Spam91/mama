class ChildInfo < ActiveRecord::Base
  attr_accessible :birth, :input, :output, :dead, :move, :where

  validates :birth, presence: true

  belongs_to :child
end
