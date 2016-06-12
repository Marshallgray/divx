class AddSkillToTalents < ActiveRecord::Migration[5.0]
  def change
    add_reference :talents, :skill_type, foreign_key: true
  end
end
