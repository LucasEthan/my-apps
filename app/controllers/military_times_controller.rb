class MilitaryTimesController < ApplicationController
  def show
    @military_time = MilitaryTime.find(params[:id])
  end

  def index
    @military_times = MilitaryTime.all
  end

  def destroy
    @military_time = MilitaryTime.find(params[:id])
    @military_time.destroy
    redirect_to military_times_path
  end

  def new
    @military_time = MilitaryTime.new
  end

  def create
  end

  private

  def military_time_params
    params.require(:military_time).permit(:military_time)
  end
end
