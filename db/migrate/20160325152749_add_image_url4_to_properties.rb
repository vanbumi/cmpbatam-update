class AddImageUrl4ToProperties < ActiveRecord::Migration
  def change
    add_column :properties, :image_url4, :string
  end
end
