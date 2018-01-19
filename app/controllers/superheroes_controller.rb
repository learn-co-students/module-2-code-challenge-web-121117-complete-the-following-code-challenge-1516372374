class SuperheroesController < ApplicationController

  def index
    @superpowers = Superpower.all
    if params[:superpower_name] != nil
      @superheroes = Superpower.find_by(name: search_params).superheroes
    else
      @superheroes = Superhero.all
    end
  end

  def show
    @superhero = Superhero.find(params.require(:id))
  end

  def new
    @superhero = Superhero.new
    @superpowers = Superpower.all
  end

  def create
    @superhero = Superhero.create(superhero_params)
    @superpowers = Superpower.all
    if @superhero.valid?
      redirect_to superhero_path(@superhero)
    else
      flash[:error] = @superhero.errors.full_messages
      render :new
    end
  end


  private

  def superhero_params
    params.require(:superhero).permit(:name, :super_name, :superpower_id)
  end

  def search_params
    params.require(:superpower_name)
  end
end
