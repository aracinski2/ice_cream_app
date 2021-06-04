Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  # namespace :api do
  #   get "/photos" => "photos#index"
  # end
  namespace :api do
    get "/ice_creams" => "ice_creams#index"
    get "/ice_creams/:id" => "ice_creams#show"
    post "/ice_creams" => "ice_creams#create"
    patch "/ice_creams/:id" => "ice_creams#update"
  end
end
