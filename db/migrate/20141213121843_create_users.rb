class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :userName
      t.string :userPassword
      t.string :userDate

      t.timestamps
    end
  end
end
