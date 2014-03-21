class Polog < ActiveRecord::Base
  attr_accessible :perbeg, :vodyvid, :qualityvod, :povnevidk, :begpotug, :vtratabloods, :peredchasn

  validates :qualityvod, :povnevidk,
            length: {minimum: 1},
            length: {maximum: 250}

  validates :vtratabloods, length: {maximum:4}
  validates :peredchasn, length: {maximum:2}

  belongs_to :woman
end
