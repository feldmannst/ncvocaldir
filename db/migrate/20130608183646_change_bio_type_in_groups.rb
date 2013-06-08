class ChangeBioTypeInGroups < ActiveRecord::Migration
  def up
  	change_column :groups, :bio, :text, :limit => nil
  end

  def down
  	change_column :groups, :bio, :string
  end
end
