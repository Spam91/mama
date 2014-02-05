class Oglad < ActiveRecord::Base
  attr_accessible :zrist, :vaga, :temperature, :vagitnist, :pology, :menstryacia, :vorshiniaplody, :okryg, :vusdnamatry

  validates :zrist, numericality: { only_integer: true }
  validates :vaga, numericality: { only_integer: true }
  validates :vagitnist, numericality: { only_integer: true }
  validates :pology, numericality: { only_integer: true }
  validates :okryg, numericality: { only_integer: true }
  validates :vusdnamatry, numericality: { only_integer: true }

  belongs_to :woman
end
