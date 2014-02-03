class Problem < ActiveRecord::Base
  attr_accessible :dead, :vadrozv, :pologtravm
  belongs_to :child
end