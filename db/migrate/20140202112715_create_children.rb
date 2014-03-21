class CreateChildren < ActiveRecord::Migration
  def change
    create_table :children do |t|
      t.integer  :history_id
      t.string   :fname       #Імя
      t.string   :sname       #По-батькові
      t.string   :surname     #Фамілія
      t.integer  :woman_id
      t.timestamps
    end
  end
end
