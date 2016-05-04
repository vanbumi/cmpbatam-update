class AddImageUrl10ToProperties < ActiveRecord::Migration
  def change
    add_column :properties, :image_url10, :string
  end
end
