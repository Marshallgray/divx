class AddUserTypeToProfile < ActiveRecord::Migration[5.0]
  def change
    add_column :profiles, :user_type, :string
  end
end
