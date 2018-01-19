class SuperheroesController < ApplicationController

  def index
    @superheroes = Superhero.all
    @superpowers = Superpower.all
  end

  def show
    set_superhero
    @superpowers = Superpower.all
  end

  def new
    @superhero = Superhero.new
    @superpowers = Superpower.all
  end

  def create
    set_superhero
    @superhero = Superhero.new(superhero_params)
    # byebug
    if @superhero.valid?
      @superhero.save
      redirect_to @superhero
    else
      render :new
    end
  end
  
  #post request from search
  # def supersearch
  #   @valid_superheros = Superhero.select(:superpower_id params[:superpower_id])
  # end



private

  def set_superhero
    @superhero = Superhero.find_by(id: params[:id])
  end

  def superhero_params
    params.require(:superhero).permit(:name, :super_name, :superpower_id)
  end

# Parameters {"utf8"=>"✓", "authenticity_token"=>"xzWySkrJq43s68/0gEk1dKH9d8W7cHl8j9tuFHswmaMce5Wue1HjMKeqIH2WeU4/C53VNrd7XxvV9M7vWsogvw==", "superhero"=>{"name"=>"Daniel", "super_name"=>"Super Dan"}, "commit"=>"Create Superhero", "controller"=>"superheroes", "action"=>"create"} permitted: false>

end
