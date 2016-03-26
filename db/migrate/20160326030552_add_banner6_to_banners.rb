class AddBanner6ToBanners < ActiveRecord::Migration
  def change
    add_column :banners, :banner6, :string
  end
end
