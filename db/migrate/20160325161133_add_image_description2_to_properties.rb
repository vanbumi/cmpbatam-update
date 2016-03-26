class AddImageDescription2ToProperties < ActiveRecord::Migration
  def change
    add_column :properties, :image_description2, :string
  end
end
