Rails.application.routes.draw do
  resources :customer_demographics
  resources :cust_cust_demographics
  resources :order_details
  resources :sales_orders
  resources :shippers
  resources :products
  resources :suppliers
  resources :employee_territories
  resources :employees
  resources :customers
  resources :territories
  resources :regions
  resources :categories
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
