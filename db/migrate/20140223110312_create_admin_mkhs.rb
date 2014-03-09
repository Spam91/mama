class CreateAdminMkhs < ActiveRecord::Migration
  def change
    create_table :admin_mkhs do |t|
      t.string   :code
      t.string   :name
      t.integer  :mkh_group_id

      t.timestamps
    end
  end
end
