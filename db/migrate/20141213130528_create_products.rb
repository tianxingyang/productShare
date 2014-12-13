class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :productName
      t.string :productLink
      t.string :productDescription
      t.integer :productLikedNumber
      t.string :productDate
      t.references :users, index: true

      t.timestamps
    end
  end
end
