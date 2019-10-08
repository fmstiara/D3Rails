class CreateWordClouds < ActiveRecord::Migration[5.2]
  def change
    create_table :word_clouds do |t|

      t.timestamps
    end
  end
end
