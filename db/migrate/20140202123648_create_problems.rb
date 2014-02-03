class CreateProblems < ActiveRecord::Migration
  def change
    create_table :problems do |t|
      t.datetime :dead
      t.string   :vadrozv
      t.string   :pologtravm
      t.integer  :child_id
      t.timestamps
    end
  end
end
