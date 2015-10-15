class UserHasManyThrowdowns < ActiveRecord::Migration
  def change
    add_column :tdowns, :user_id, :integer
  end
end
