class AddAttachmentLogoToGroups < ActiveRecord::Migration
  def self.up
    change_table :groups do |t|
      t.attachment :logo
    end
  end

  def self.down
    drop_attached_file :groups, :logo
  end
end
