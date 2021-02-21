class AddEmailDomainToCompanies < ActiveRecord::Migration[6.1]
  def change
    add_column :companies, :email_domain, :string
  end
end
