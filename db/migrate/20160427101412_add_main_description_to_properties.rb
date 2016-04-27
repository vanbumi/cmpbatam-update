class AddMainDescriptionToProperties < ActiveRecord::Migration
  def change
    add_column :properties, :main_description, :text
  end
end
