class CreateDoctorhistories < ActiveRecord::Migration
  def change
    create_table :doctorhistories do |t|
      t.integer  :woman_id
      t.string   :act
      t.string   :type
      t.datetime :date
      t.integer  :doctor_id
      t.timestamps
    end
  end
end
