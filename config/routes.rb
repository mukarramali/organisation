Rails.application.routes.draw do
  resources :employees
  get '/tree', to: "employees#tree"
  get '/', to: "employees#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
