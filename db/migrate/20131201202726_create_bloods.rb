class CreateBloods < ActiveRecord::Migration
  def change
    create_table :bloods do |t|
      t.integer  :number	#Група крові
      t.boolean  :plusminus	#Резус - приналежність
      t.integer  :gemo		#Гемоглобін
      t.float    :tutr		#Титр антитіл
      t.string   :alegreac  #Алергічні реакції
      t.datetime :rw11		#
      t.boolean  :rw12		#
      t.datetime :rw21		#
      t.boolean  :rw22		#
      t.datetime :gonorea1
      t.boolean  :gonorea2
      t.integer  :woman_id
      t.timestamps
    end
  end
end
