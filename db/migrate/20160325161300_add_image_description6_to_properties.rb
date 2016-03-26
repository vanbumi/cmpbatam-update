class AddImageDescription6ToProperties < ActiveRecord::Migration
  def change
    add_column :properties, :image_description6, :string
  end
end
