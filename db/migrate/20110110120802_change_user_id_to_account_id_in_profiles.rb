class ChangeUserIdToAccountIdInProfiles < ActiveRecord::Migration
  def self.up
    rename_column :profiles,    :user_id,     :account_id
    add_column    :profiles,    :nickname,    :string
    add_column    :businesses,  :email,       :string
    add_column    :photos,      :business_id, :integer
  end

  def self.down
    rename_column :profiles,    :account_id,  :user_id
    remove_column :profiles,    :nickname
    remove_column :businesses,  :email
    remove_column :photos,      :business_id
  end
end
