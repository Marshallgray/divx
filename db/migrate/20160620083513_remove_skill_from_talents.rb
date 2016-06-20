class RemoveSkillFromTalents < ActiveRecord::Migration[5.0]
  def change
    remove_reference :talents, :skill_type, foreign_key: true
  end
end
