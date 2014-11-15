Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      resources :people, only: [:create]
      resources :competitions, only: [:entries] do
        get 'entries', on: :member
      end

    end
  end

  resources :people
  resources :entries
  resources :competitions

end
