class CreateChildFatherBloods < ActiveRecord::Migration
  def change
    create_table :child_father_bloods do |t|
      t.integer :number1
      t.boolean :plusminus1
      t.integer :number2
      t.boolean :plusminus2
      t.integer :child_id
      t.timestamps
    end
  end
end
