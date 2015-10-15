class CreateCommitments < ActiveRecord::Migration
  def change

    create_table :users do |t|
      t.string :name
      t.timestamps null: false
    end

    create_table :tdowns do |t|
      t.string :name
      t.timestamps null: false
    end

    create_table :commitments do |t|
      t.belongs_to :user, index: true
      t.belongs_to :tdown, index: true

      t.timestamps null: false
    end
  end
end
