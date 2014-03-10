class Admin::NameZnebol < ActiveRecord::Base
  attr_accessible :code, :name
  has_many :operations
end
