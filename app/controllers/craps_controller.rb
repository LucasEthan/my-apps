class CrapsController < ApplicationController
  def show
    @craps = Craps.find(params[:id])
  end

  def index
    @craps = Craps.all
  end

  def destroy
  end

  def new
  end

  def create
  end
end
