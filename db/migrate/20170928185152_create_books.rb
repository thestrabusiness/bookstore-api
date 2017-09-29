class CreateBooks < ActiveRecord::Migration[5.1]
  def change
    create_table :authors do |t|
      t.string :name

      t.timestamps
    end

    create_table :publishing_houses do |t|
      t.string :name
      t.decimal :discount, precision: 3, scale: 2

      t.timestamps
    end

    create_table :books do |t|
      t.string :title
      t.decimal :price, precision: 5, scale: 2
      t.references :author, foreign_key: true
      t.references :publisher, polymorphic: true

      t.timestamps
    end
  end
end
