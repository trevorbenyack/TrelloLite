Rails.application.routes.draw do
  root 'lanes#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # https://guides.rubyonrails.org/layouts_and_rendering.html

  resources :cards
  resources :lanes

  post "new_card" => "cards#create"
end
