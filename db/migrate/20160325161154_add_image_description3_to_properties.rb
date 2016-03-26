class AddImageDescription3ToProperties < ActiveRecord::Migration
  def change
    add_column :properties, :image_description3, :string
  end
end
