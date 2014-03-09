class CreateAdminNameZnebols < ActiveRecord::Migration
  def change
    create_table :admin_name_znebols do |t|
      t.string :code
      t.string :name

      t.timestamps
    end
  end
end
