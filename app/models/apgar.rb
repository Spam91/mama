class Apgar < ActiveRecord::Base
  attr_accessible :afterbir, :sercebitia, :duhania, :colorshkiru, :tonysmiaziv, :reflexy

  validates :sercebitia, numericality: {only_integer: true}
  validates :duhania, numericality: {only_integer: true}
  validates :colorshkiru, numericality: {only_integer: true}
  validates :tonysmiaziv, numericality: {only_integer: true}
  validates :reflexy, numericality: {only_integer: true}



  belongs_to :child
end
