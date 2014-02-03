class CreatePologs < ActiveRecord::Migration
  def change
    create_table :pologs do |t|
      t.datetime :perbeg		#Перейми почались
      t.datetime :vodyvid		#Води відійшли
      t.string	 :qualityvod	#Якість і кількість вод
      t.string   :povnevidk		#Повне відкриття
      t.datetime :begpotug		#Початок потуг
      t.integer  :vtratabloods  #Втрата крові в пологах
      t.integer  :peredchasn    #На якому тижні
      t.integer  :woman_id
      t.timestamps
    end
  end
end
