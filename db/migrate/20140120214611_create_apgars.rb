class CreateApgars < ActiveRecord::Migration
  def change
    create_table :apgars do |t|
      t.integer  :afterbir		#Час після народження
      t.integer  :sercebitia	#Серцебиття
      t.integer  :duhania		#Дихання СС
      t.integer  :colorshkiru	#Колір шкіри СС
      t.integer  :tonysmiaziv	#Тонус мязів СС
      t.integer  :reflexy		#Рефлекси
      t.integer  :child_id
      t.timestamps
    end
  end
end
