class AddImageDescription12ToProperties < ActiveRecord::Migration
  def change
    add_column :properties, :image_description12, :string
  end
end
