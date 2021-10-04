class CreateReads < ActiveRecord::Migration[6.0]
  def change
    create_table :reads do |t|
      t.string     :name,  null: false
      t.integer    :genre, null: false
      t.text       :impression
      t.references :user,  foreign_key: true
      t.timestamps
    end
  end
end
