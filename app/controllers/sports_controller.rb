class SportsController < ApplicationController
    def index
      @sports = current_user.sports
    end

    def show
      @sport = Sport.find(params[:id])
    end

    def new
      @sport = Sport.new
    end

    def create
      @sport = current_user.sports.build(sport_params)
      if @sport.save
        redirect_to sports_path, notice: 'Sport created successfully.'
      else
        render :new
      end
    end

    private

    def sport_params
      params.require(:sport).permit(:name, :teams)
    end
  end
