class AddBanner2ToBanners < ActiveRecord::Migration
  def change
    add_column :banners, :banner2, :string
  end
end
