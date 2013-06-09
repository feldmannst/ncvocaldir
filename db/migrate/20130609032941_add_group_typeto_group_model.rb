class AddGroupTypetoGroupModel < ActiveRecord::Migration
  def up
  	change_table :groups do |t|
  		t.integer :grouptype
  	end
  end

  def down
  	remove_column :groups, :grouptype
  end
end
