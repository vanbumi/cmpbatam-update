class AddImageUrl7ToProperties < ActiveRecord::Migration
  def change
    add_column :properties, :image_url7, :string
  end
end
