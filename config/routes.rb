Rails.application.routes.draw do
  get "/" => "restaurants#index"
  get "/:id/new_order" => "orders#new"
  get "order/:id/join" => "patrons#new"
  get "order/:id/edit" => "orders#edit"
  put "order/:id" => "orders#update"
  get "order/:id" => "orders#show"
  post "/:id" => "orders#create"
  get "order/:id/cancel" => "orders#cancel"
  delete "order/:id" => "orders#destroy"
  get "patrons/:id/edit" => "patrons#edit"
  get "patrons/:id/add" => "items#new"
  put "patrons/:id" => "patrons#update"
  post "patrons/:id" => "items#create"
  get "patrons/:id" => "patrons#show"
  post "join/:id" => "patrons#create"
  get "patrons/:id/cancel" => "patrons#cancel"
  delete "patrons/:id" => "patrons#destroy"
  get "items/:id" => "items#edit"
  put "items/:id" => "items#update"
  delete "items/:id" => "items#destroy"
  get "/:id" => "restaurants#show"
end
