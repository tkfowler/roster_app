class RostersController < ApplicationController
  def index
    @players = Player.all
    @position = Position.all
  end

  def show
    @players = Player.all
    @position = ['P', 'C', '1B', '2B', '3B', 'SS', 'LF', 'CF', 'RF']
    # @position = Position.all
    if @players.length > 9 then
      (@players.length - 9).times do
        @position.push('BN')
      end
    end
  end

  def create
    @player = Player.create(player_params)
    if @player.valid?
      redirect_to "/"
    else
      flash[:errors] = @player.errors.full_messages
      redirect_to '/'
    end
  end

  def delete
    @player = Player.find(params[:id])
    @player.destroy
    redirect_to '/'
  end

  def player_params
    params.require(:player).permit(:name, :pitcher, :inning_pitch, :pref_pos, :avoid_pos)
  end
end
