class CreatePhotos < ActiveRecord::Migration
  def self.up 
    create_table :photos do |t|
      t.references  :profile
      t.string      :title
      t.string      :summary
      t.string      :url
      t.string      :screenshot_file_name
      t.string      :screenshot_content_type
      t.integer     :screenshot_file_size
      t.datetime    :screenshot_updated_at
      
      
      t.timestamps
    end
  end

  def self.down
    drop_table :photos
  end
end
