class SavingBoxesController < ApplicationController
  def index
    render json: SavingBox.all
  end

  def show
    render json: SavingBox.find(params[:id])
  end

  def create
    saving_box = SavingBox.create!(permitted_params)

    render json: saving_box
  end

  def update
    saving_box = SavingBox.find(params[:id])
    saving_box.update!(permitted_params)

    render json: saving_box
  end

  def delete

  end

  private

  def permitted_params
    params.require(:saving_box).permit(:title, :purpose, :user_id)
  end
end
