Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :auth do
        collection do
          post :signin
          post :signup
        end
      end
    end
  end
end
