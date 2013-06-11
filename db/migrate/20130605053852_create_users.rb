class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :passowrd
      t.text :about
      t.text :type_of_beer

      t.timestamps
    end
  end
end
