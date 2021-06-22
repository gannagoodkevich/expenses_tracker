Rails.application.routes.draw do
  resources :planned_expenses
  resources :regular_expenses
  resources :saving_boxes
  resources :wallets, only: [:show, :update]
end
