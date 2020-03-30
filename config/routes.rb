Feedback::Engine.routes.draw do
  resources :tickets do
    resources :comments
  end
end
