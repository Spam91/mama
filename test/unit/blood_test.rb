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

require 'test_helper'

class BloodTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
