class AddImageDescription9ToProperties < ActiveRecord::Migration
  def change
    add_column :properties, :image_description9, :string
  end
end
