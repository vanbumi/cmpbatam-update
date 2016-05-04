class AddImageDescription8ToProperties < ActiveRecord::Migration
  def change
    add_column :properties, :image_description8, :string
  end
end
