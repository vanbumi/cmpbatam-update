class AddImageUrl12ToProperties < ActiveRecord::Migration
  def change
    add_column :properties, :image_url12, :string
  end
end
