class AddImageDescriptionToProperties < ActiveRecord::Migration
  def change
    add_column :properties, :image_description, :string
  end
end
