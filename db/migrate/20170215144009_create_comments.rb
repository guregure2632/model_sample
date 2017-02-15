class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      
      t.references :user, foreign_key: true
      t.references :post, foreign_key: true
      t.string :content
      
      t.timestamps
    end
  end
end