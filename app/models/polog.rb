class Polog < ActiveRecord::Base
  attr_accessible :perbeg, :vodyvid, :qualityvod, :povnevidk, :begpotug, :vtratabloods
  belongs_to :woman
end
