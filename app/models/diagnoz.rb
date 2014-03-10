class Diagnoz < ActiveRecord::Base
  attr_accessible :tipdia, :mkh_id, :diamkhs_attributes
  belongs_to :woman

  has_many :diamkhs, :dependent => :destroy
  accepts_nested_attributes_for :diamkhs
end
