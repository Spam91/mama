class Apgar < ActiveRecord::Base
  attr_accessible :afterbir, :sercebitia, :duhania, :colorshkiru, :tonysmiaziv, :reflexy

  validates :afterbir, :sercebitia, :duhania, :colorshkiru, :tonysmiaziv, :reflexy,
            presence: true,
            length: {maximum: 1}

  belongs_to :child
end
