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

class Admin::Doctor < ActiveRecord::Base
  attr_accessible :email, :fname, :sname, :surname, :password, :password_confirmation, :role
  before_save{|doctor| doctor.email = email.downcase}

  has_secure_password

  validates :fname, presence: true,
            length: { minimum: 3 },
            length: { maximum: 25 }
  validates :sname, presence: true,
            length: { minimum: 3 },
            length: { maximum: 25 }
  validates :surname, presence: true,
            length: { minimum: 3 },
            length: { maximum: 25 },
            uniqueness: true
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true,
            format:{with: VALID_EMAIL_REGEX},
            uniqueness: { case_sensitive: false }
  validates :password, presence: true, length: {minimum: 5}
  validates :password_confirmation, presence: true
  has_many :doctorhistorys
end
