class Oglad < ActiveRecord::Base
  attr_accessible :zrist, :vaga, :temperature, :vagitnist, :pology, :menstryacia, :vorshiniaplody, :okryg, :vusdnamatry, :diagnozs_attributes

  belongs_to :woman
  has_many :diagnozs, :dependent => :destroy
  accepts_nested_attributes_for :diagnozs, :reject_if => lambda { |a| a[:tohosp].blank? }, :allow_destroy => true
end
