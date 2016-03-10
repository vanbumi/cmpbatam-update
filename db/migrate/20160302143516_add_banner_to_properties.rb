class AddBannerToProperties < ActiveRecord::Migration
  def change
    add_column :properties, :banner, :boolean, :default => false
  end
end
