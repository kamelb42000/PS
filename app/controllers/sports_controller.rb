class SportsController < ApplicationController
    def index
      @sports = current_user.sports
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

    def destroy
      @sport = Sport.find(params[:id])
      if current_user == @sport.user
        @sport.destroy
        redirect_to sports_path, status: :see_other, flash: { alert: "Le dossier a été supprimé avec succès." }
      else
        render "Vous n'êtes pas autorisé à supprimer ce dossier.", status: :forbidden
      end
    end


    def show
      @sport = Sport.find(params[:id])
    end
    private

    def sport_params
      params.require(:sport).permit(:name, :teams)
    end
  end
