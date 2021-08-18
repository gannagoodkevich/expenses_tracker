class PlannedExpensesController < ApplicationController
  def index
    render json: PlannedExpense.all
  end

  def show
    render json: PlannedExpense.find(params[:id]), status: :ok
  end

  def create
    # binding.pry
    planned_expense = PlannedExpense.create!(permitted_params)

    render json: planned_expense, status: :created
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
    params.require(:planned_expense).permit(:title, :description, :due_date, :user_id, :amount, tags: [])
  end
end
