class CreateBloods < ActiveRecord::Migration
  def change
    create_table :bloods do |t|
      t.integer    :woman_id
      t.integer    :number		#Група крові
      t.boolean    :plusminus	#Резус - приналежність
      t.timestamps
    end
  end
end
