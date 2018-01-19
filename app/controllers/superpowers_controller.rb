class SuperpowersController < ApplicationController
  def index
    @superpowers = Superpower.all
  end

  def show
    @superpower = Superpower.find(params[:id])
  end

  def new
    @superpower = Superpower.new
  end

  def create
    #byebug
    @superpower = Superpower.create(superpower_params)
      redirect_to @superpower
    end

  def edit
    @superpower = Superpower.find(params[:id])
  end

  def update
    @superpower = Superpower.find(params[:id])
    @superpower.update(superpower_params)

    redirect_to @superpower
  end

  def destroy
    @superpower = Superpower.find(params[:id])
    @superpower.destroy

    redirect_to superpowers_path
  end

  private

  def superpower_params
    params.require(:superpower).permit(:name)
  end

end
