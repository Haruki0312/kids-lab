class CreateWorks < ActiveRecord::Migration[6.0]
  def change
    create_table :works do |t|
      t.string :title,     null: false
      t.text :material,    null: false
      t.integer :theme_id, null: false
      t.integer :days_id,  null: false
      t.integer :grate_id, null: false
      t.text :explanation, null: false
      t.references :user,  foreign_key: true
      
      t.timestamps
    end
  end
end
