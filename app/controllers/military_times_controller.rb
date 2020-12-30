class MilitaryTimesController < ApplicationController
  def show
  end

  def index
    @military_times = MilitaryTime.all
  end
end
