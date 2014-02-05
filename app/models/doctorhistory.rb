class Doctorhistory < ActiveRecord::Base
  attr_accessible :woman_id, :act, :type, :date
  belongs_to :doctor
end
