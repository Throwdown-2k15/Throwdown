class CreateTdowns < ActiveRecord::Migration
  def change
    create_table :tdowns do |t|
      t.string :name
      t.time :time
      t.text :details
      t.string :location
      t.float :startx
      t.float :starty
      t.float :finishx
      t.float :finishy

      t.timestamps null: false
    end
  end
end
