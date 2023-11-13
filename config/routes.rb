Rails.application.routes.draw do
  resources :order_details
  resources :sales_orders
  resources :shippers
  resources :products
  resources :suppliers
  resources :employee_territories
  resources :employees
  resources :cust_cust_demographies
  resources :customers
  resources :customer_demographies
  resources :territories
  resources :regions
  resources :categories
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
