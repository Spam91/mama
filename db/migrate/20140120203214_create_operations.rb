class CreateOperations < ActiveRecord::Migration
  def change
    create_table :operations do |t|
      t.integer   :oname				  #Найменування операції CC
      t.datetime :dateandtime		#Дата і час
      t.string   :methodzneb		#Метод знеболювання
      t.string   :problem			  #Ускладнення
      t.integer   :oper          #Оперував СС
      t.integer  :woman_id
      t.timestamps
    end
  end
end
