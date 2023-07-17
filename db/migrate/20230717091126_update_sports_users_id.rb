class UpdateSportsUsersId < ActiveRecord::Migration[6.0]
  def change
    remove_column :sports, :users_id
    add_reference :sports, :user, foreign_key: true
  end
end
