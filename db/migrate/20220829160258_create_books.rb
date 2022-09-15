class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.string :title
      #new attributes
      t.string :author
      t.decimal :price
      t.date :published

      t.timestamps
    end
  end
end
