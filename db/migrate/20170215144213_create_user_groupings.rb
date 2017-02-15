class CreateUserGroupings < ActiveRecord::Migration
  def change
    create_table :user_groupings do |t|
      
      t.references :user
      t.references :group
      t.timestamps
    end
  end
end
