class CreateFires < ActiveRecord::Migration[6.1]
  def change
    create_table :fires do |t|
      t.string :coal
      t.text :text


      t.timestamps
    end
  end
end
