class Operation < ActiveRecord::Base
  attr_accessible :oname, :dateandtime, :methodzneb, :problem, :oper
  belongs_to :woman
end
