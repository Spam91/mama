class Polog < ActiveRecord::Base
  attr_accessible :perbeg, :vodyvid, :qualityvod, :povnevidk, :begpotug, :vtratabloods, :peredchasn


  belongs_to :woman
end
