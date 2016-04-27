class AddLuasTanahToProperties < ActiveRecord::Migration
  def change
    add_column :properties, :luas_tanah, :string
  end
end
