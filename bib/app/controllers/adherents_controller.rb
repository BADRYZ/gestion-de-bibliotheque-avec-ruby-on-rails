class AdherentsController < ApplicationController
  before_action :authenticate_admin
  before_action :set_adherent, only: [:show, :edit, :update, :destroy]

  def authenticate_admin
    unless current_admin
      redirect_to login_path, alert: "Please sign in first."
    end
  end

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

  def destroy
    @adherent = Adherent.find(params[:id])
    begin
      # Optionally destroy dependent records if necessary
      @adherent.emprunts.destroy_all # Adjust this line based on your associations
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
