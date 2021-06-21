class RegularExpensesController < ApplicationController
  def index
    render json: RegularExpense.all
  end

  def show
    render json: RegularExpense.find(params[:id])
  end

  def create
    regular_expense = RegularExpense.create!(permitted_params)

    render json: regular_expense
  end

  def update
    regular_expense = RegularExpense.find(params[:id])
    regular_expense.update!(permitted_params)

    render json: regular_expense
  end

  def delete

  end

  private

  def permitted_params
    params.require(:regular_expense).permit(:name, :description, :notification_date, :user_id)
  end
end
