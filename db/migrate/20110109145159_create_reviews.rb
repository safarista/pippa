class CreateReviews < ActiveRecord::Migration
  def self.up
    create_table :reviews do |t|
      t.references  :business
      t.string      :title
      t.integer     :content

      t.timestamps
    end
  end

  def self.down
    drop_table :reviews
  end
end
