Rails.application.routes.draw do
  root to: 'invoices#index'
  resources :invoices, only: [:index, :show] do
    resource :download, only: [:show]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
