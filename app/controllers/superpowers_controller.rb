class SuperpowersController < ApplicationController
  def index
    @superpowers = Superpower.all
  end

  def show
    @superpower = Superpower.find(params[:id])
  end

  def search
    # @superpower = Superpower.find_by(name: params[:superpower_name])
    # @superhereos = Superhero.all.select {|hero| hero.superpower_id == @superpower.id}
    redirect_to superpowers_path
    #ran out of time here
  end


end
