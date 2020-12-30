class MilitaryTimesController < ApplicationController
  def show
    @military_time = MilitaryTime.find(params[:id])
  end

  def index
    @military_times = MilitaryTime.all
  end
end
