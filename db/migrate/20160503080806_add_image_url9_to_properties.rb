class AddImageUrl9ToProperties < ActiveRecord::Migration
  def change
    add_column :properties, :image_url9, :string
  end
end
