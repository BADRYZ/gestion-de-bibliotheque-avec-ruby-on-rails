class HomeController < ApplicationController
  def index
    @adherent = Adherent.first # Vous devez définir @adherent avec un adhérent spécifique ici, selon votre logique
  end


end
