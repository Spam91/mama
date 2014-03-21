class CreateDiagnozs < ActiveRecord::Migration
  def change
    create_table :diagnozs do |t|
      t.integer :tipdia
      t.integer :mkh_id
      t.integer :woman_id
      t.timestamps
    end
  end
end
