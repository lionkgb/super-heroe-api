class Api::V1::SuperHeroesController < ApplicationController
  def index 
    @super_heroes = SuperHero.all
  end
  def create
    @super_hero = SuperHero.create(
      name: params[:name], 
      power: params[:power], 
      descriptor: params[:descriptor]
    ) 
    render :show
    
  end 

  def show 
    @super_hero = SuperHero.find_by(id:params[:id])
  end
  def update 
    @super_hero = SuperHero.find_by(id:params[:id])
    @super_hero.update(
      name: params[:name], 
      power: params[:power], 
      descriptor: params[:descriptor]
      )
    render :show
  end 

  def destroy
    @super_hero = SuperHero.find_by(id: params[:id])
    @super_hero.destroy
    render json: {message: "SUPER HERO DESTROYED"}
  end
end

