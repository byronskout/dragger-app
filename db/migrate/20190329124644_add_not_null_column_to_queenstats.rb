class AddNotNullColumnToQueenstats < ActiveRecord::Migration[5.2]
  def change
    change_column_null :queen_stats, :win_mini_challenge, false
    change_column_null :queen_stats, :win_maxi_challenge, false
    change_column_null :queen_stats, :safe_or_survives, false
    change_column_null :queen_stats, :placed_in_top, false
    change_column_null :queen_stats, :placed_in_bottom, false
    change_column_null :queen_stats, :wins_lipsync, false
    change_column_null :queen_stats, :eliminated, false
    change_column_null :queen_stats, :takes_the_crown, false
  end
end
