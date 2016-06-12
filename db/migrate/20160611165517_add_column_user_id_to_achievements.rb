class AddColumnUserIdToAchievements < ActiveRecord::Migration
  def change
    add_column :achievements, :user_id, :integer
  end
end
