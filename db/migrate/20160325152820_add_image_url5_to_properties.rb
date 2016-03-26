class AddImageUrl5ToProperties < ActiveRecord::Migration
  def change
    add_column :properties, :image_url5, :string
  end
end
