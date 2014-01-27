# == Schema Information
#
# Table name: women
#
#  id            :integer          not null, primary key
#  fname         :string(255)
#  sname         :string(255)
#  surname       :string(255)
#  doctor_id     :integer
#  woman_info_id :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

require 'test_helper'

class WomanTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
