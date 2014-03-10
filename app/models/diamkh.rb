class Diamkh < ActiveRecord::Base
  attr_accessible :mkh_id
  belongs_to :diagnoz
  belongs_to :mkh, :class_name => 'Admin::Mkh'
end
