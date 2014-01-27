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
  attr_accessible :number
  belongs_to :woman

end
