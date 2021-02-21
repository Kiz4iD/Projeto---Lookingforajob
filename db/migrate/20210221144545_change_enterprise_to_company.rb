class ChangeEnterpriseToCompany < ActiveRecord::Migration[6.1]
  def change
    rename_table :enterprises, :companies

  end
end
