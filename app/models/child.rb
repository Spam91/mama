class Child < ActiveRecord::Base
  attr_accessible :history_id, :born, :fname, :sname, :surname

  validates :born, presence: true
  validates :history_id,presence: true, numericality: { only_integer: true }
  validates :fname,
            length: { minimum: 3 },
            length: { maximum: 25 }
  validates :sname,
            length: { minimum: 3 },
            length: { maximum: 25 }
  validates :surname,
            length: { minimum: 3 },
            length: { maximum: 25 }
            
  belongs_to :woman
  has_many :apgars
  has_one :param
  has_one :problem
end
