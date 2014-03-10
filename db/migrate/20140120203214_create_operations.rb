class CreateOperations < ActiveRecord::Migration
  def change
    create_table :operations do |t|
      t.integer  :name_operation_id				  #Найменування операції CC
      t.datetime :dateandtime		#Дата і час
      t.string   :name_znebol_id		#Метод знеболювання
      t.string   :problem			  #Ускладнення
      t.integer  :surgeon_id          #Оперував СС
      t.integer  :woman_id
      t.timestamps
    end
  end
end
