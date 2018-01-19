class SuperheroesController < ApplicationController

  def index
    set_superheroes
  end

  def show
    set_superhero
  end

  def new
    @superhero = Superhero.new
    @superpowers = Superpower.all
  end

  def create
    @superhero = Superhero.create(superhero_params)
    if @superhero.valid?
      redirect_to @superhero
    else
      # byebug
      flash[:error] = @superhero.errors.full_messages
      redirect_to new_superhero_path
    end
  end

  private

  def superhero_params
    params.require(:superhero).permit(:name, :super_name, :superpower_id)
  end

  def set_superhero
    @superhero = Superhero.find(params[:id])
  end

  def set_superheroes
    @superheroes = Superhero.all
  end

  def set_superpower
    @superpowers = @superhero.superpowers
  end

end
