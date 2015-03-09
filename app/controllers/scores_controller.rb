class ScoresController < ApplicationController

def index
	@scores = Score.all
end

def show
	@score = Score.where("`id` = :id or name = :id", id: params[:id])
	@scores = Score.where(:name =>@score.name)
end
def new
	@score = Score.new
	@names = Score.pluck(:name)

end

def create
	@score = Score.new(score_params)

	if @score.save
		redirect_to scores_path
	else
		render 'new'
	end
end

private

def score_params
	params.require(:score).permit(:name,:points, :points1,:points2,:points3,:points4)
end




end
