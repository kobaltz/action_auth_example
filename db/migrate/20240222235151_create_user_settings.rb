class CreateUserSettings < ActiveRecord::Migration[7.1]
  def change
    create_table :user_settings do |t|
      t.belongs_to :user, null: false, foreign_key: { to_table: :action_auth_users }
      t.string :first_name
      t.string :last_name

      t.timestamps
    end
  end
end
