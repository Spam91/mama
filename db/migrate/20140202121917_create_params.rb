class CreateParams < ActiveRecord::Migration
  def change
    create_table :params do |t|
      t.boolean  :stat			#Стать СС
      t.boolean  :life			#Народився живим чи ні СС
      t.boolean  :stan			#Доношений СС
      t.integer  :weight		#Маса
      t.integer  :height		#Зріст
      t.integer  :head			#Окружність голови
      t.integer  :body			#Окружність грудної клітки
      t.integer  :duration	#Асфіксія тривалість
      t.string   :zahodu		#Асфіксія заходи оживлення
      t.string   :spad_mot  #Спадковість матері
      t.string   :spad_fat  #Спадковість батька
      t.integer  :child_id
      t.timestamps
    end
  end
end