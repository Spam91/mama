class Param < ActiveRecord::Base
  attr_accessible :stat, :life, :stan, :weight, :height, :head, :body, :duration, :zahodu
  belongs_to :child
end