class SuperpowersController < ApplicationController

  def index
    @superpowers = Superpower.all
  end

  def show
    set_superpower
  end


  def set_superpower
    @superpower = Superpower.find_by(id: params[:id])
  end


end
