class Polog < ActiveRecord::Base
  attr_accessible :perbeg, :vodyvid, :qualityvod, :povnevidk, :begpotug, :vtratabloods, :peredchasn
  
  validates :vtratabloods, numericality: { only_integer: true }

  belongs_to :woman
end
