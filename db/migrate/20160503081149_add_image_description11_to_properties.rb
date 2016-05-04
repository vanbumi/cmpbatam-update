class AddImageDescription11ToProperties < ActiveRecord::Migration
  def change
    add_column :properties, :image_description11, :string
  end
end
