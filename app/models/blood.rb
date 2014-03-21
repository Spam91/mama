# == Schema Information
#
# Table name: bloods
#
#  id         :integer          not null, primary key
#  woman_id   :integer
#  number     :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Blood < ActiveRecord::Base
  attr_accessible :number, :plusminus, :gemo, :tutr, :alegreac, :rw11, :rw12, :rw21, :rw22, :gonorea1, :gonorea2

  validates :alegreac,
            length: {maximum: 250}
  validates :number,
            length: {maximum:1}
  validates :gemo,
            length: {maximum:4}

  belongs_to :woman

end
