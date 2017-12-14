class CreateGroupWatchlists < ActiveRecord::Migration[5.1]
  def change
    create_table :group_watchlists do |t|
      t.references :group, index: true, foreign_key: true
      t.references :movie, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
