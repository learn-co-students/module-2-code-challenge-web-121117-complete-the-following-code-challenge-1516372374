class SuperpowersController < ApplicationController

  def index
    set_superpowers
  end

  def show
    set_superpower
  end


private

def set_superpower
  @superpower = Superpower.find(params[:id])
end

def set_superpowers
  @superpowers = Superpower.all
end

end
