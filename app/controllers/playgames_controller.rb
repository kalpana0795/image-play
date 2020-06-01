class PlaygamesController < ApplicationController
  def create
    @playgame = PlayGame.create(playgame_params)
  end

  private

  def playgame_params
    params.require(:playgame).permit(:count, :image_url)
  end
end
