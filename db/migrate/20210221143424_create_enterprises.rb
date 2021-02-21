class CreateEnterprises < ActiveRecord::Migration[6.1]
  def change
    create_table :enterprises do |t|
      t.string :company_name
      t.string :logo
      t.string :address
      t.string :registred_number
      t.string :website
      t.string :linkedin
      t.string :facebook
      t.string :instagram

      t.timestamps
    end
  end
end
