Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html\
  root "chat#index"

  get "/chat", to: "chat#index"
  get "/resources", to: "resources#index"
end
