Rails.application.routes.draw do

  get 'about_us', to: 'pages#AboutUs'

  get 'contact', to: 'contact#new', as: 'new_contact'
  post 'contact', to: 'contact#create', as: 'create_contact'

  # get 'custom_services', to: 'pages#CustomServices'

  get 'privacy_policy', to: 'pages#PrivacyPolicy'
  get 'harrassment_policy', to:'pages#HarrassmentPolicy'

  root to: 'pages#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end