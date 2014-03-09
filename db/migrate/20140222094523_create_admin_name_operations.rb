class CreateAdminNameOperations < ActiveRecord::Migration
  def change
    create_table :admin_name_operations do |t|
      t.string :code
      t.string :name

      t.timestamps
    end
  end
end
