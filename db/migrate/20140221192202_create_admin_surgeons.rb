class CreateAdminSurgeons < ActiveRecord::Migration
  def change
    create_table :admin_surgeons do |t|
      t.string :name
      t.string :code
      t.string :zvanie

      t.timestamps
    end
  end
end
