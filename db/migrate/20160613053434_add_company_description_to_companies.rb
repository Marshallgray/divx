class AddCompanyDescriptionToCompanies < ActiveRecord::Migration[5.0]
  def change
    add_column :companies, :company_description, :text
  end
end
