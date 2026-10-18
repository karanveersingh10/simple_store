
Rails.application.routes.draw do
  # Routes for displaying products.
  get "products", to: "products#index"
  get "products/:id", to: "products#show", as: "product"

  # Set the products index page as the home page.
  root "products#index"
end
