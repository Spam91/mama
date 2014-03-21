class Child < ActiveRecord::Base
  attr_accessible :history_id, :fname, :sname, :surname

  #validates :born, presence: true
  validates :history_id,presence: true, numericality: { only_integer: true }
  validates :fname, presence: true,
            length: { minimum: 3 },
            length: { maximum: 25 }
  validates :sname,
            length: { minimum: 3 },
            length: { maximum: 25 }
  validates :surname, presence: true,
            length: { minimum: 3 },
            length: { maximum: 25 }
            
  belongs_to :woman
  has_many :apgars
  has_one :param
  has_one :problem
  has_one :child_info
  has_one :child_father_blood
end
