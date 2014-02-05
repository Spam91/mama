class CreateWomen < ActiveRecord::Migration
  def change
    create_table :women do |t|
      t.string   :fname       #Імя
      t.string   :sname       #По-батькові
      t.string   :surname     #Фамілія
      t.integer  :history_id
      t.timestamps
    end
  end
end
