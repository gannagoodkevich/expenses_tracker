class WalletsController < ApplicationController
  def show
    render json: Wallet.find(params[:id])
  end

  def update
    wallet = Wallet.find(params[:id])
    wallet.update!(permitted_params)

    render json: wallet
  end

  private

  def permitted_params
    params.require(:wallet).permit(:amount, :currency, :active, :user_id)
  end
end
