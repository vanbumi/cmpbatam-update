class ChangeNohpTypeInContacts < ActiveRecord::Migration
  def self.up
    change_column :contacts, :nohp, :string
  end

  def self.down
    change_column :contacts, :nohp, :integer
  end

end
