class QueenStatsController < ApplicationController

  def new
    @queen_stat = QueenStat.new
 end

 def create
   @queen_stat = QueenStat.new(queen_stat_params)
   if @queen_stat.valid?
      @queen_stat.save
     redirect_to queen_path(@queen_stat.queen_id)
   else
     render :new
   end
 end

 def queen_stat_params
   params.require(:queen_stat).permit(:queen_id, :episode, :total_score, :win_mini_challenge, :win_maxi_challenge, :safe_or_survives, :placed_in_top, :placed_in_bottom, :wins_lipsync, :loses_lipsync, :eliminated, :takes_the_crown)
end

end
