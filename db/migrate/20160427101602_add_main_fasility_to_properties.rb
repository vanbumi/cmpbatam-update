class AddMainFasilityToProperties < ActiveRecord::Migration
  def change
    add_column :properties, :main_fasility, :string
  end
end
