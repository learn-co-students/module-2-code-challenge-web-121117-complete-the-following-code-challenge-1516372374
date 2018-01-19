class SuperheroesController < ApplicationController

  def index
    @superheroes = Superhero.all
  end

  def new
    @superhero = Superhero.new
    @superpowers =Superpower.all
  end

  def create
    @superhero = Superhero.create(superhero_params)
    redirect_to superhero_path(@superhero)
  end

  def show
    @superhero = Superhero.find_by(id: params[:id])
    # @supepowers = @superhero.superpower_id
  end

  def edit
    @superhero = Superhero.find_by(id: params[:id])
     @superpowers = Superpower.all
  end

  def update
    @superhero = Superhero.find(params[:id])
    @superhero.update(superhero_params)
    redirect_to superhero_path(@superhero)
  end

  def destroy
    @superheroe = Superhero.find(params[:id])
    @superheroe.destroy
    redirect_to superheroes_path
  end

  private

  def superhero_params
    params.require(:superhero).permit(:name, :super_name, :superpower_id)
  end
end
