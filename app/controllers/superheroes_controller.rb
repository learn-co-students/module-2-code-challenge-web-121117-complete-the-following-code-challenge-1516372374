class SuperheroesController < ApplicationController

  def index
    @superheroes = Superhero.all
  end

  def show
    @superhero = Superhero.find(params[:id])
  end

  def new
    @superhero = Superhero.new
    @superpowers = Superpower.all
    @all_superpowers = @superpowers.collect {|s| [s.name, s.id]}
  end

  def create
    #byebug
    @superhero = Superhero.create(superhero_params)

    redirect_to @superhero
  end

  def edit
    @superhero = Superhero.find(params[:id])
  end

  def update
    @superhero = Superhero.find(params[:id])
    @superhero.update(superhero_params)

    redirect_to @superhero
  end

  def destroy
    @superhero = Superhero.find(params[:id])
    @superhero.destroy

    redirect_to superheroes_path
  end

  private

  def superhero_params
    params.require(:superhero).permit(:name, :superpower_id)
  end
end
