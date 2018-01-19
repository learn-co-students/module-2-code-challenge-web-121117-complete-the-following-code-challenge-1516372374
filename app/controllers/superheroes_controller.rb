class SuperheroesController < ApplicationController
  def index
    @superheroes = Superhero.all
    @superpowers = Superpower.all
  end

  def show
    @superhero = Superhero.find_by(id: params[:id])
  end

  def new
    @superhero = Superhero.new
    @superpowers = Superpower.all
  end

  def create
    @superpowers = Superpower.all
    @superhero = Superhero.create(superhero_params)
    if @superhero.valid?
      redirect_to superhero_path(@superhero)
    else
      render :new
    end
  end

  # def edit
  #
  # end
  #
  # def create
  #
  # end
  #
  # def destroy
  #
  # end

  private

  def superhero_params
    params.require(:superhero).permit(:name, :super_name, :superpower_id)
  end
end
