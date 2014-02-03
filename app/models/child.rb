class Child < ActiveRecord::Base
  attr_accessible :history_id, :born
  belongs_to :woman
  has_one :apgar
  has_one :param
  has_one :problem
end
