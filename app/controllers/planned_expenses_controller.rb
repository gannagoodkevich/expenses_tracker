class PlannedExpensesController < ApplicationController
  def index
    render json: PlannedExpense.all
  end

  def show
    render json: PlannedExpense.find(params[:id])
  end

  def create
    planned_expense = PlannedExpense.create!(permitted_params)

    render json: planned_expense
  end

  def update
    planned_expense = PlannedExpense.find(params[:id])
    planned_expense.update!(permitted_params)

    render json: planned_expense
  end

  def delete

  end

  private

  def permitted_params
    params.require(:planned_expense).permit(:name, :description, :due_date, :user_id)
  end
end
