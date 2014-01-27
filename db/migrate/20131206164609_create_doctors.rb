class CreateDoctors < ActiveRecord::Migration
  def change
    create_table :doctors do |t|
      t.string   :fname       #Імя
      t.string   :sname       #По-батькові
      t.string   :surname     #Фамілія
      t.string   :email       #Пошта
      t.string   :password_digest
      t.timestamps
    end
  end
end
