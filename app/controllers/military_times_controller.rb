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
    military_time = military_time_params[:military_time]
    @military_time = MilitaryTime.new(military_time: military_time)
    begin
      @military_time.standard_time = MilitaryTimeConversion.new(military_time).standard_time
    rescue ConversionError => e
      @military_time.errors.add(:military_time, e.message)
    end
    if @military_time.errors.blank? && @military_time.save
      flash[:success] = "Military time conversion successfully created"
      redirect_to @military_time
    else
      flash.now[:danger] = "An error occured while converting the military time. Please try again"
      render :new
    end
  end

  private

  def military_time_params
    params.require(:military_time).permit(:military_time)
  end
end
