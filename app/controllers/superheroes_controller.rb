class SuperheroesController < ApplicationController
  before_action :find_superhero, only:[:show, :edit, :update, :destroy]
  def index
    @superheroes = Superhero.all
  end

  def show
  end

  def new
    @superhero = Superhero.new
    @superpowers = Superpower.all
  end

  def create
    @superhero = Superhero.new(superheroe_params)

    if @superhero.valid?
      @superhero.save
      redirect_to @superhero
    else
      flash[:error] = @superhero.errors.full_messages
      redirect_to new_superhero_path
    end
  end

  def edit
    @superpowers = Superpower.all
  end

  def update
    @superhero.update(superheroe_params)

    if @superhero.valid?
      redirect_to @superhero
    else
      flash[:error] = @superhero.errors.full_messages
      redirect_to edit_superhero_path(@superhero.id)
    end
  end

  def destroy
    @superhero.destroy
    redirect_to superheroes_path
  end

  private

  def superheroe_params
    params.require(:superhero).permit(:name, :super_name, :superpower_id, :superpower)
  end

  def find_superhero
    @superhero = Superhero.find(params[:id])
  end
end
