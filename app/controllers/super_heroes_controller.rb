class SuperHeroesController < ApplicationController
  def index 
    @super_heroes = SuperHero.all
  end
end
