class AdherentsController < ApplicationController
  before_action :set_adherent, only: [:show, :edit, :update, :destroy]
  #has_many :emprunts, dependent: :destroy

  #has_many :emprunts, dependent: :destroy

  def index
    @adherents = Adherent.all
  end

  def show
  end

  def new
    @adherent = Adherent.new
  end

  def edit
  end

  def create
    @adherent = Adherent.new(adherent_params)
    if @adherent.save
      redirect_to @adherent, notice: 'Adhérent was successfully created.'
    else
      render :new
    end
  end

  def update
    if @adherent.update(adherent_params)
      redirect_to @adherent, notice: 'Adhérent was successfully updated.'
    else
      render :edit
    end
  end

  # def destroy
  #   @adherent = Adherent.find(params[:id])
  #   if @adherent.destroy
  #     redirect_to adherents_path, notice: 'Adhérent was successfully destroyed.'
  #   else
  #     redirect_to adherents_path, alert: 'Failed to delete adhérent.'
  #   end
  # end
  def destroy
    @adherent = Adherent.find(params[:id])
    begin
      # Essayer de supprimer les emprunts ou d'autres relations ici si nécessaire
      @adherent.emprunts.destroy_all # ou une autre logique selon le cas
      @adherent.destroy
      redirect_to adherents_path, notice: 'Adhérent was successfully destroyed.'
    rescue ActiveRecord::RecordNotDestroyed
      redirect_to adherents_path, alert: 'Failed to delete adhérent because dependent records exist.'
    end
  end



  private
    def set_adherent
      @adherent = Adherent.find(params[:id])
    end

    def adherent_params
      params.require(:adherent).permit(:nom, :prenom, :cin)
    end
end
