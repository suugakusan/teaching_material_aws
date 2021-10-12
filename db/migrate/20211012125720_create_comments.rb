class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|
      t.string :comment_content
      t.references :user, null: false, foreign_key: true
      t.references :post, null: false, foreign_key: true
      t.string :comment_file

      t.timestamps
    end
  end
end