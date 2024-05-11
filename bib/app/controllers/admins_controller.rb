class AdminsController < ApplicationController
  def show
    @admin = current_admin # Ou toute autre méthode que vous utilisez pour obtenir l'administrateur actuel
  end
  def logged_in?
    admin_signed_in?
  end
end
