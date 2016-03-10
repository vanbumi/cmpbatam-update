class AddBanner1ToBanners < ActiveRecord::Migration
  def change
    add_column :banners, :banner1, :string
  end
end
