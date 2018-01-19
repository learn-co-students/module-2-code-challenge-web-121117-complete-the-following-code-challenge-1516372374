class SuperpowersController < ApplicationController
  def index
    @superpowers = Superpower.all
  end
  def index
    @superpowers = Superpower.all
  end
  def new
    @superpower = Superpower.new
  end
  def create
    @superpower = Superpower.create

    redirect_to superpower_path(@superpower)

  end
  def show
    @superpower = Superpower.find_by(superpower_params)
  end
  private
  def superpower_params
      # params.require(:superpower).permit(:name,:description)
  end
end
