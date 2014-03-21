class Admin::MkhGroup < ActiveRecord::Base
  attr_accessible :code, :name, :mkhs_attributes
  has_many :mkhs, :dependent => :destroy
  accepts_nested_attributes_for :mkhs, :reject_if => lambda { |a| [a[:code].blank?, a[:name].blank?]  }, :allow_destroy => true
end
