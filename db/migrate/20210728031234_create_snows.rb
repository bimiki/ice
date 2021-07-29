class CreateSnows < ActiveRecord::Migration[6.1]
  def change
    create_table :snows do |t|
      t.string :water
      t.text :text
      
      t.timestamps
    end
  end
end
