# == Schema Information
#
# Table name: woman_infos
#
#  id          :integer          not null, primary key
#  age         :integer
#  input       :datetime
#  output      :datetime
#  bed         :integer
#  directed    :string(255)
#  home_adress :string(255)
#  tel         :string(255)
#  invalidity  :boolean
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class WomanInfoTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
