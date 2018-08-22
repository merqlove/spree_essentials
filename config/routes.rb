# Rails.application
Spree::Core::Engine.append_routes do
  namespace :admin do
    resources :uploads
  end
end
