Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'users#splash'

    # devise_scope :user do
    #   root to: 'devise/sessions#new'
    # end

    resources :users, only: [:splash]
  resources :categories, only: [:index, :new, :create, :edit, :update, :destroy], :path => "categories" do 
    resources :expenses, only: [:index, :new, :create, :edit, :update, :destroy], :path => "transactions"
  end
end
