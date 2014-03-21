class Problem < ActiveRecord::Base
  attr_accessible :vadrozv, :pologtravm

  validates :vadrozv, :pologtravm,
            length: { maximum: 250 }

  belongs_to :child
end