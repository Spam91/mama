class Oglad < ActiveRecord::Base
  attr_accessible :zrist, :vaga, :temperature, :vagitnist, :pology, :menstryacia, :vorshiniaplody, :okryg, :vusdnamatry
  belongs_to :woman
end
