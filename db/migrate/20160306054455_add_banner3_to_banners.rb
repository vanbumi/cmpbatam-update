class AddBanner3ToBanners < ActiveRecord::Migration
  def change
    add_column :banners, :banner3, :string
  end
end
