class AddAttachmentAvatarToPhotoShouts < ActiveRecord::Migration
  def self.up
    change_table :photo_shouts do |t|
      t.attachment :avatar
    end
  end

  def self.down
    drop_attached_file :photo_shouts, :avatar
  end
end
