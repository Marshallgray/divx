class CreateSkillTypes < ActiveRecord::Migration[5.0]
  def change
    create_table :skill_types do |t|

      t.timestamps
    end
  end
end
