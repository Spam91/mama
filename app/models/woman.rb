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

class Woman < ActiveRecord::Base
  attr_accessible :surname, :fname, :sname, :history_id
  #belongs_to :marital_status
  

  validates :surname, presence: true,
            length: {minimum: 2},
            length: {maximum: 25}
  validates :fname, presence: true,
            length: {minimum: 2},
            length: {maximum: 25}
  validates :sname, presence: true,
            length: {minimum: 2},
            length: {maximum: 25}
  validates :history_id, presence: true,
            uniqueness: true
            
  has_one :blood
  has_one :woman_info
  has_one :operation
  has_one :oglad
  has_one :polog
  has_many :children

  has_one :diagnoz
end
