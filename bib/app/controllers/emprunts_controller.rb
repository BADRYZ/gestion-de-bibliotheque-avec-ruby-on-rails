class EmpruntsController < ApplicationController
  before_action :set_emprunt, only: [:show, :edit, :update, :destroy]

  def index
    @emprunts = Emprunt.includes(:adherent, :item).all
  end

  def show
  end

  def new
    @emprunt = Emprunt.new
    @documents = Document.all
    @materiels = Materiel.all
  end

  def edit
  end

  # def create
  #   @emprunt = Emprunt.new(emprunt_params)
  #   if @emprunt.save
  #     redirect_to @emprunt, notice: 'Emprunt was successfully created.'
  #   else
  #     render :new
  #   end
  # end
  def create
    @emprunt = Emprunt.new(emprunt_params)
    if @emprunt.save
      redirect_to @emprunt, notice: 'Emprunt was successfully created.'
    else
      render :new
    end
  end

  def update
    if @emprunt.update(emprunt_params)
      redirect_to @emprunt, notice: 'Emprunt was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @emprunt.destroy
    redirect_to emprunts_url, notice: 'Emprunt was successfully destroyed.'
  end

  private

  def set_emprunt
    @emprunt = Emprunt.find(params[:id])
  end

  def emprunt_params
    params.require(:emprunt).permit(:adherent_id, :item_id, :item_type)
  end
end
