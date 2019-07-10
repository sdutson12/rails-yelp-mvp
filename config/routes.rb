Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :restaurants, except: %i[edit update destroy] do
    resources :reviews, only: %i[new create]
  end
end

# GET "restaurants" index
# GET "restaurants/new" new
# POST "restaurants" create
# GET "restaurants/38" show

# review
# GET "restaurants/38/reviews/new" new
# POST "restaurants/38/reviews" create
