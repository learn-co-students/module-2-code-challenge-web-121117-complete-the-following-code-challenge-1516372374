class SuperheroesController < ApplicationController
  def index
    @superheroes = Superhero.all
  end
  def new
    @superhero = Superhero.new
    @superpowers = Superpower.all
  end
  def create
    # validation failing
    # @superhero = Superhero.new
    # if @superhero.valid?
    #   @superhero.save
    #   redirect_to superhero_path(@superhero)
    # else
    #   render :new
    # end

    @superhero = Superhero.create(superhero_params)

    redirect_to superhero_path(@superhero)

  end
  def show
    @superhero = Superhero.find_by(id: params[:id])
    @superpower_name = Superpower.find(@superhero.superpower_id).name
    @superpower = Superpower.find(@superhero.superpower_id)
  end

  private
    def superhero_params
      params.require(:superhero).permit(:name,:super_name,:superpower_id)
    end
end
