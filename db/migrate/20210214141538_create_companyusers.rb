class CreateCompanyusers < ActiveRecord::Migration[6.1]
  def change
    create_table :companyusers do |t|
      t.string :email
      t.string :password

      t.timestamps
    end
  end
end
