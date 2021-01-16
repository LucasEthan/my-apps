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
end
