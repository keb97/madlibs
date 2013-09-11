class CreateMadeGames < ActiveRecord::Migration
  def change
    create_table :made_games do |t|
      t.string :text1
      t.string :word1
      t.string :text2
      t.string :word2
      t.string :text3
      t.string :word3
      t.string :text4
      t.string :word4
      t.string :text5
      t.string :word5
      t.string :text6
      t.string :word6
      t.string :text7
      t.string :word7
      t.string :text8
      t.string :word8

      t.timestamps
    end
  end
end
