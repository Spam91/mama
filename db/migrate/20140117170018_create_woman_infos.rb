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
      t.integer  :categor               #Категорія інвалід
      t.string   :seria                 #серія посвідчення
      t.string   :number_pos            #номер посвідче
      t.string   :national              #національність
      t.string   :palata                #палата
      t.string   :misce_progiv          #місце проживання 2
      t.string   :sim_stan              #сімейний стан
      t.string   :job                   #робота
      t.boolean  :vid_akysher           #відвідування акушерку
      t.integer  :raziv                 #скільки разів
      t.string   :name_cons             #найменування консультацій

      t.integer  :woman_id
      t.timestamps
    end
  end
end
