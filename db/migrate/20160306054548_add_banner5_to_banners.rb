class AddBanner5ToBanners < ActiveRecord::Migration
  def change
    add_column :banners, :banner5, :string
  end
end
