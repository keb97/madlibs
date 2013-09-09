class CreateMadeGameInstances < ActiveRecord::Migration
  def change
    create_table :made_game_instances do |t|
      t.string :word1
      t.string :word2
      t.string :word3
      t.string :word4
      t.string :word5
      t.string :word6
      t.string :word7
      t.string :word8
      t.references :made_game

      t.timestamps
    end
  end
end
