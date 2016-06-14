class AddCompanyLogoToCompanies < ActiveRecord::Migration[5.0]
  def change
    add_column :companies, :company_logo, :string
  end
end
