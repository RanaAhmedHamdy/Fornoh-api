class AddAttachmentPhotoToDirections < ActiveRecord::Migration
  def self.up
    change_table :directions do |t|
      t.attachment :photo
    end
  end

  def self.down
    remove_attachment :directions, :photo
  end
end
