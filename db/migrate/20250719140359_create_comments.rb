class CreateComments < ActiveRecord::Migration[7.0]
  def change
    create_table :comments do |t|
      t.string :name
      t.text :body
      t.belongs_to :note

      t.timestamps
    end
  end
end
