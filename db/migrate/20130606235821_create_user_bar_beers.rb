class CreateUserbarbeers < ActiveRecord::Migration
  def change
    create_table :userbarbeers do |t|
      t.references :user
      t.references :bar
      t.references :beer

      t.timestamps
    end
    add_index :userbarbeers, :user_id
    add_index :userbarbeers, :bar_id
    add_index :userbarbeers, :beer_id
  end
end
