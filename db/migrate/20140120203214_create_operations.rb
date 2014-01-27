class CreateOperations < ActiveRecord::Migration
  def change
    create_table :operations do |t|
      t.string   :oname				#Найменування операції
      t.datetime :dateandtime		#Дата і час
      t.string   :methodzneb		#Метод знеболювання
      t.string   :problem			#Ускладнення
      t.string   :oper              #Оперував СС
      t.timestamps
    end
  end
end
