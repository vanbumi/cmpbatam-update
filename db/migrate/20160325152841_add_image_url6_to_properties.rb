class AddImageUrl6ToProperties < ActiveRecord::Migration
  def change
    add_column :properties, :image_url6, :string
  end
end
