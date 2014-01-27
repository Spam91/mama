# == Schema Information
#
# Table name: doctors
#
#  id              :integer          not null, primary key
#  fname           :string(255)
#  sname           :string(255)
#  surname         :string(255)
#  email           :string(255)
#  password_digest :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

require 'test_helper'

class DoctorTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
