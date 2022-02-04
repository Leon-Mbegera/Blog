class CreateComments < ActiveRecord::Migration[7.0]
  def change
    create_table :comments do |t|
      t.string :commentor
      t.text :body
      t.references :article, null: false, foreign_key: true

      t.timestamps
    end
  end
end
