class CreateUserProducts < ActiveRecord::Migration
  def change
    create_table :user_products do |t|
      t.references :user, index: true
      t.references :product, index: true

      t.timestamps
    end
  end
end
