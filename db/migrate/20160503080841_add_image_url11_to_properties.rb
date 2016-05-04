class AddImageUrl11ToProperties < ActiveRecord::Migration
  def change
    add_column :properties, :image_url11, :string
  end
end
