class CreateChildInfos < ActiveRecord::Migration
  def change
    create_table :child_infos do |t|
      t.datetime :birth   #народження
      t.datetime :input   #поступив
      t.datetime :output  #виписаний
      t.datetime :dead    #помер
      t.datetime :move    #переведений
      t.string   :where   #куди
      t.integer  :child_id
      t.timestamps
    end
  end
end
