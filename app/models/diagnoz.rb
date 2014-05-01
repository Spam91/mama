class Diagnoz < ActiveRecord::Base
  attr_accessible :tipdia, :mkh_id, :diamkhs_attributes
  belongs_to :woman

  has_many :diamkhs, :dependent => :destroy
  accepts_nested_attributes_for :diamkhs, :allow_destroy => true#:reject_if => lambda { |a| a[:mkh_id].blank? },
end
