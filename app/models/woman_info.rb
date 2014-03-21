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

class WomanInfo < ActiveRecord::Base
  attr_accessible :age, :input, :output, :bed, :directed, :home_adress, :tel, :invalidity,
                  :categor, :seria, :number_pos, :national, :palata, :misce_progiv, :sim_stan,
                  :job, :vid_akysher, :raziv, :name_cons

  validates :directed, :home_adress, :tel,
            :seria, :number_pos, :national, :palata, :misce_progiv, :sim_stan,
            :job, :name_cons,
            length: {minimum: 1},
            length: {maximum: 250}

  validates :age, :bed, :categor, :raziv, length: {maximum:3}

  belongs_to :woman
end
