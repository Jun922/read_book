class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.string     :name,  null: false
      t.integer    :genre, null: false
      t.text       :impression
      t.references :user,  foreign_key: true
      t.timestamps
    end
  end
end
