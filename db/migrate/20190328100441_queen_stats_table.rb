class QueenStatsTable < ActiveRecord::Migration[5.2]
  def change
    create_table:queen_stats do |t|
      t.integer :queen_id
      t.integer :episode
      t.integer :win_mini_challenge
      t.integer :win_maxi_challenge
      t.integer :safe_or_survives
      t.integer :placed_in_top
      t.integer :placed_in_bottom
      t.integer :wins_lipsync
      t.integer :loses_lipsync
      t.integer :eliminated
      t.integer :takes_the_crown
    end
  end
end
