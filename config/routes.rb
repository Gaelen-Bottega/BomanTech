Rails.application.routes.draw do

  get 'about_us', to: 'pages#AboutUs'

  get 'contact', to: 'contact#new', as: 'new_contact'
  post 'contact', to: 'contact#create', as: 'create_contact'

  get 'custom_services', to: 'pages#CustomServices'

  get 'production_services', to: 'pages#ProductionServices'

  root to: 'pages#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end