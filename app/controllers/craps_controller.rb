class CrapsController < ApplicationController
  def show
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
