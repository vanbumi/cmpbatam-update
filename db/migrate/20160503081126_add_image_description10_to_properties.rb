class AddImageDescription10ToProperties < ActiveRecord::Migration
  def change
    add_column :properties, :image_description10, :string
  end
end
