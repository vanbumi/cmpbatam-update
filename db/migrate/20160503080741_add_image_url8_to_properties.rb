class AddImageUrl8ToProperties < ActiveRecord::Migration
  def change
    add_column :properties, :image_url8, :string
  end
end
