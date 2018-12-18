Ecm::Galleries::Backend::Engine.routes.draw do
  resources :picture_galleries do
    post :toggle_published, on: :member
  end

  resources :picture_details do
    post :destroy_many, on: :collection
    post :reposition, on: :member
    post :toggle_published, on: :member
  end

  root to: 'home#index'
end
