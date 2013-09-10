class CreateMadeGameInstances < ActiveRecord::Migration
  def change
    create_table :made_game_instances do |t|
      t.string :new_word1
      t.string :new_word2
      t.string :new_word3
      t.string :new_word4
      t.string :new_word5
      t.string :new_word6
      t.string :new_word7
      t.string :new_word8
      t.references :made_game

      t.timestamps
    end
  end
end
