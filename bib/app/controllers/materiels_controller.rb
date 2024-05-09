class MaterielsController < ApplicationController
  before_action :set_materiel, only: [:show, :edit, :update, :destroy]

  def index
    @materiels = Materiel.all
  end

  def show
  end

  def new
    @materiel = Materiel.new
  end


  def display_name
    "#{materiel_id}-#{marque}"
  end


  def edit
  end

  def create
    @materiel = Materiel.new(materiel_params)
    if @materiel.save
      redirect_to @materiel, notice: 'Materiel was successfully created.'
    else
      render :new
    end
  end

  def update
    if @materiel.update(materiel_params)
      redirect_to @materiel, notice: 'Materiel was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @materiel.destroy
    redirect_to materiels_url, notice: 'Materiel was successfully destroyed.'
  end

  private
    def set_materiel
      @materiel = Materiel.find(params[:id])
    end

    def materiel_params
      params.require(:materiel).permit(:materiel_id,:type,:marque, :disponible)
    end
end
