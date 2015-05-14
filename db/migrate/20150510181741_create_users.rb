class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer :userID
      t.string :username
      t.datetime :createDate
      t.datetime :expiryDate

      t.timestamps
    end
  end
end
