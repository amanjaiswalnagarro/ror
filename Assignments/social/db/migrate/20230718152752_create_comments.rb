class CreateComments < ActiveRecord::Migration[7.0]
  def change
    create_table :comments do |t|
      t.references :blog, null: false, foreign_key: true
      t.string :username
      t.text :body
      t.references :commentable, polymorphic: true, index: true
      t.timestamps
    end
  end
end
