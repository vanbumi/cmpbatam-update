class CreateCprofiles < ActiveRecord::Migration
  def change
    create_table :cprofiles do |t|
      t.string :company_name
      t.string :company_phone
      t.string :company_mail
      t.text :company_address
      t.string :company_owner
      t.string :company_web
      t.text :company_description
      t.string :company_logo

      t.timestamps null: false
    end
  end
end
