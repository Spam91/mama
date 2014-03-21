class CreateOglads < ActiveRecord::Migration
  def change
    create_table :oglads do |t|
      t.integer  :zrist             #Зріст
      t.integer  :vaga			    #Вага
      t.float    :temperature		#Температура
      t.integer	 :vagitnist			#Номер вагітності
      t.integer  :pology			#Номер пологів
      t.date :menstryacia		#Остання менструація
      t.date :vorshiniaplody	#Перше ворушіння плоду
      t.integer  :tazsp				#
      t.integer  :tazcr				#
      t.integer  :taztr				#
      t.integer  :tazext			#
      t.integer  :tazdiag			#
      t.integer  :tazvera			#
      t.integer  :okryg				#Окружність живота
      t.integer  :vusdnamatry		#Висота дна матки
      t.string   :pologplod   #положення плоду
      t.string   :sercebitia  #серцебиття
      t.string   :legchas     #передлежача частина
      t.string   :where       #де знаходиться
      t.string   :pologdia    #пологова діяльність
      t.string   :vagaplod    #передбачувана вага плоду
      t.integer  :woman_id
      t.timestamps
    end
  end
end
