class CreateInterviews < ActiveRecord::Migration[5.0]
  def change
    create_table :interviews do |t|
      t.references :job_role, foreign_key: true
      t.references :talent, foreign_key: true
      t.time :time
      t.date :date
      t.string :location
      t.text :comments
      t.boolean :Approved

      t.timestamps
    end
  end
end
