class CreateWomanInfos < ActiveRecord::Migration
  def change
    create_table :woman_infos do |t|
      t.integer  :age                   #Вік
      t.datetime :input                 #Поступила
      t.datetime :output                #Виписана
      t.integer  :bed                   #Ліжко днів
      t.string   :directed              #Ким направлена
      t.string   :home_adress           #Місце проживання
      t.string   :tel                   #Телефон
      t.boolean  :invalidity            #Інвалід
      t.integer  :woman_id
      t.timestamps
    end
  end
end
