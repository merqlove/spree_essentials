# Rails.application
Spree::Core::Engine.add_routes do
  namespace :admin do
    resources :uploads
  end
end
