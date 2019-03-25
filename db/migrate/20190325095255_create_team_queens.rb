class CreateTeamQueens < ActiveRecord::Migration[5.2]
  def change
    create_table :team_queens do |t|
      t.integer :team_id
      t.integer :queen_id

      t.timestamps
    end
  end
end
