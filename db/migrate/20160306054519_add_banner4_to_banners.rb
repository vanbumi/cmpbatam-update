class AddBanner4ToBanners < ActiveRecord::Migration
  def change
    add_column :banners, :banner4, :string
  end
end
