class CreateAdminMkhGroups < ActiveRecord::Migration
  def change
    create_table :admin_mkh_groups do |t|
      t.string :code
      t.string :name

      t.timestamps
    end
  end
end
