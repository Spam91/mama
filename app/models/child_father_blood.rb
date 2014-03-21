class ChildFatherBlood < ActiveRecord::Base
  attr_accessible :number1, :plusminus1, :number2, :plusminus2

  validates :surname, presence: true,
            length: { minimum: 3 },
            length: { maximum: 25 }

  belongs_to :child
end
