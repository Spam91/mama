class CreateDiagnozs < ActiveRecord::Migration
  def change
    create_table :diagnozs do |t|
      t.string   :tohosp          #При госпіталізації МКХ-10
      t.string   :tofin 		  #Заключний МКХ-10
      t.string   :toclinik 		  #Клінічний МКХ-10
      t.integer  :oglad_id
      t.timestamps
    end
  end
end
