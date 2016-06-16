class CreateJobRoles < ActiveRecord::Migration[5.0]
  def change
    create_table :job_roles do |t|
      t.string :title
      t.text :description
      t.references :business_location, foreign_key: true

      t.timestamps
    end
  end
end
