class CreateCommitments < ActiveRecord::Migration
  def change
    create_table :commitments do |t|

      t.timestamps null: false
    end
  end
end
