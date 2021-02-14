class CreateCompanies < ActiveRecord::Migration[6.1]
  def change
    create_table :companies do |t|
      t.string :companyname
      t.string :logo
      t.string :address
      t.string :website
      t.string :instagram
      t.string :facebook
      t.string :linkedin

      t.timestamps
    end
  end
end
