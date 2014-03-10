class CreateDiamkhs < ActiveRecord::Migration
  def change
    create_table :diamkhs do |t|
      t.integer  :diagnoz_id
      t.integer  :mkh_id
      t.timestamps
    end
  end
end
