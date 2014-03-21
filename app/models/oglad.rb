class Oglad < ActiveRecord::Base
  attr_accessible :zrist, :vaga, :temperature, :vagitnist, :pology, :menstryacia, :vorshiniaplody,
                  :tazsp, :tazcr, :taztr, :tazext, :tazdiag, :tazvera,
                  :okryg, :vusdnamatry, :pologplod, :sercebitia, :legchas, :where, :pologdia, :vagaplod

  validates :zrist, :vaga, :vagitnist, :pology,
            :tazsp, :tazcr, :taztr, :tazext, :tazdiag, :tazvera,
            :okryg, :vusdnamatry,
            length: {maximum: 4}

  validates :pologplod, :sercebitia, :legchas, :where, :pologdia, :vagaplod,
            length: {maximum:250}

  belongs_to :woman
end
