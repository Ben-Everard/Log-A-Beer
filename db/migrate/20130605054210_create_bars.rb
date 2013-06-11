class CreateBars < ActiveRecord::Migration
  def change
    create_table :bars do |t|
      t.string :name
      t.string :city
      t.string :state, :limit => 2
      t.string :street

      t.timestamps
    end
  end
end
