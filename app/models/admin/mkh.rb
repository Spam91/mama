class Admin::Mkh < ActiveRecord::Base
  attr_accessible :code, :name
  belongs_to :mkh_group
  has_many   :diamkhs
end
