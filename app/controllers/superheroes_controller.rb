class SuperheroesController < ApplicationController

  # We have several different superpowers and each can be bestowed upon more than one superhero. Each superhero can only wield one superpower.

  def index
    @superheroes = Superhero.all
  end

  def new
    @superhero = Superhero.new
  end

  def show
    @superhero = Superhero.find(params[:id])
  end

  def edit
    @superhero = Superhero.find(params[:id])
  end

  def create
    byebug
    @superhero= Superhero.new(superhero_params)
    if @superhero.valid?
      @superhero.save
      redirect_to @superhero
    else
      redirect_to edit_superhero_path(@superhero)
    end
  end

  def update
    @superhero = Superhero.find(params[:id])
    @superhero.update(superhero_params)
    redirect_to @superhero
  end

  def destroy
    @superhero = Superhero.find(params[:id])
    @superhero.destroy
    redirect_to superheros_path
  end

  private

  def superpowers
    @superpowers= Superpowers.all
  end

  def superhero_params
    params.require(:superhero).permit(:name, :super_name, :superpower_id)
  end

end
