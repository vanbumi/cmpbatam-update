class CreateProperties < ActiveRecord::Migration
  def change
    create_table :properties do |t|
      t.string :name
      t.string :location
      t.string :status
      t.string :property_type
      t.integer :bedroom
      t.integer :bathroom
      t.decimal :price
      t.string :area

      t.timestamps null: false
    end
  end
end
