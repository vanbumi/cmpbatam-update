class AddImageDescription5ToProperties < ActiveRecord::Migration
  def change
    add_column :properties, :image_description5, :string
  end
end
