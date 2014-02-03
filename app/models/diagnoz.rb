class Diagnoz < ActiveRecord::Base
 attr_accessible :tohosp, :tofin, :toclinik
  belongs_to :woman
end
