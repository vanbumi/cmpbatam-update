class AddActiveToProperties < ActiveRecord::Migration
  def change
    add_column :properties, :active, :string
  end
end
