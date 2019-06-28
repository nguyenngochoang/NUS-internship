Rails.application.routes.draw do
  root 'welcome#index'
  get '/customers/:id', to: 'customers#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    shallow do
        resources :employees do
           resources :customers do
            resources :appointments
           end
        end
    end
end
