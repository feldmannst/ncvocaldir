class ChangeBioTypeInGroups < ActiveRecord::Migration
  def up
  	change_column :groups, :bio, :text
  end

  def down
  	change_column :groups, :bio, :string
  end
end
