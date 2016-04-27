class AddLuasBangunanToProperties < ActiveRecord::Migration
  def change
    add_column :properties, :luas_bangunan, :string
  end
end
