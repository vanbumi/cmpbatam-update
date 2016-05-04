class AddImageDescription7ToProperties < ActiveRecord::Migration
  def change
    add_column :properties, :image_description7, :string
  end
end
