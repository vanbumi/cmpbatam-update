class AddImageUrl3ToProperties < ActiveRecord::Migration
  def change
    add_column :properties, :image_url3, :string
  end
end
