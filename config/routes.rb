Ecm::Galleries::Backend::Engine.routes.draw do
  resources :picture_galleries do
    post :toggle_published, on: :member
  end
  resources :picture_details

  root to: 'home#index'
end
