class Admin::Surgeon < ActiveRecord::Base
  attr_accessible :code, :name, :zvanie
  has_many :operations
end
