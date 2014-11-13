class AddUserIdToNames < ActiveRecord::Migration
  def change
    add_column :names, :user_id, :integer
  end
end
