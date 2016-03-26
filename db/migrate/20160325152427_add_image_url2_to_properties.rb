class AddImageUrl2ToProperties < ActiveRecord::Migration
  def change
    add_column :properties, :image_url2, :string
  end
end
