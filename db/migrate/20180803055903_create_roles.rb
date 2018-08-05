class CreateRoles < ActiveRecord::Migration[5.2]
  def change
    create_table :roles do |t|
      t.integer :user_id
      t.integer :group_id
      t.boolean :admin, default: false
      t.boolean :moderator, default: false

      t.timestamps
    end
  end
end
