class CreateUserWatchlists < ActiveRecord::Migration[5.1]
  def change
    create_table :user_watchlists do |t|
      t.references :movie, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
