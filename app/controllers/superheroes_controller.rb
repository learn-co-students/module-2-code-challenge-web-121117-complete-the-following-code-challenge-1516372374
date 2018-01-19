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
  end

  def create
    @superpowers = Superpower.all
    @superhero = Superhero.create(hero_params)

    if @superhero.valid?
      redirect_to superhero_path(@superhero)
    else
      flash[:error] = @superhero.errors.full_messages
      render :new
    end
  end

  def edit
    @superhero = Superhero.find(params[:id])
    @superpowers = Superpower.all
  end

  def update
    @superhero = Superhero.find(params[:id])
    @superhero.update(hero_params)
    redirect_to @superhero
  end

  private

  def hero_params
    params.require(:superhero).permit(:name, :super_name, :superpower_id)
  end
end
