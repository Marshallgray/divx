class CreateTalents < ActiveRecord::Migration[5.0]
  def change
    create_table :talents do |t|
      t.references :user, foreign_key: true
      t.string :video
      t.text :bio
      t.string :resume
      t.string :suburb
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
