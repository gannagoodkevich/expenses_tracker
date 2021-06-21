Rails.application.routes.draw do
  resources :planned_expenses
  resources :regular_expenses
  resources :saving_boxes
end
